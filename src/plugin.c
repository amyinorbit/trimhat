//===--------------------------------------------------------------------------------------------===
// plugin.c - trimhat plugin by Amy Parent
//
// Created by Amy Parent <amy@amyparent.com>
// Copyright (c) 2021 Amy Parent
// Licensed under the MIT License
// =^•.•^=
//===--------------------------------------------------------------------------------------------===
#include <acfutils/log.h>
#include <acfutils/assert.h>
#include <acfutils/helpers.h>
#include <acfutils/conf.h>
#include <XPLMPlugin.h>
#include <XPLMUtilities.h>
#include <XPLMMenus.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

enum {
    DIR_UP,
    DIR_DOWN,
    DIR_LEFT,
    DIR_RIGHT,
    DIR_UP_LEFT,
    DIR_DOWN_LEFT,
    DIR_DOWN_RIGHT,
    DIR_UP_RIGHT,
    DIR_COUNT
};

enum {
    MENU_REVERSE
};

#define PLUGIN_SIG  "com.amyinorbit.trimhat"
#define PLUGIN_NAME "TrimHat"
#define PLUGIN_DESC "TrimHat by Amy Alex Parent"

static XPLMCommandRef hat_enable = NULL;
static XPLMCommandRef trim_cmd[4] = {NULL};
static XPLMCommandRef hat_cmd[DIR_COUNT] = {NULL};

static bool is_reversed = false;
static bool is_enabled = false;
static bool is_trimming = false;

static struct {
    XPLMMenuID  id;
    int         item_rev;
} menu;

static char *config_path() {
    char xplane[1024];
    XPLMGetSystemPath(xplane);
#if	IBM
    fix_pathsep(xplane);
#endif
    return mkpathname(xplane, "Output", "preferences", "trimhat.cfg", NULL);
}

static bool get_b(conf_t *conf, const char *path, bool *out) {
    bool_t v = B_FALSE;
    if(!conf_get_b(conf, path, &v)) {
        return false;
    }
    *out = v;
    return true;
}

static bool load() {
    char *path = config_path();
    conf_t *cfg = conf_read_file(path, NULL);
    if(!cfg) {
        free(path);
        return false;
    }
    bool has_data = get_b(cfg, "reverse", &is_reversed);
    conf_free(cfg);
    free(path);
    
    return has_data;
}

static void save() {
    conf_t *cfg = conf_create_empty();
    conf_set_b(cfg, "reverse", is_reversed);
    
    char *path = config_path();
    if(!conf_write_file(cfg, path)) {
        logMsg("error writing configuration to `%s'", path);
    }
    conf_free(cfg);
    free(path);
}


#if IBM==1
#include <windows.h>
BOOL APIENTRY DllMain( HANDLE hModule, DWORD ul_reason_for_call, LPVOID lpReserved) {
    UNUSED(hModule);
    UNUSED(ul_reason_for_call);
    UNUSED(lpReserved);
    return TRUE;
}
#endif

static XPLMCommandRef find_command(const char *cmd) {
    XPLMCommandRef ref = XPLMFindCommand(cmd);
    VERIFY3P(ref, !=, NULL);
    return ref;
}

static int enable_cb(XPLMCommandRef cmd, XPLMCommandPhase phase, void *refcon) {
    UNUSED(cmd);
    UNUSED(refcon);
    
    if(!is_enabled) {
        is_trimming = false;
        return 0;
    }
    
    switch(phase) {
    case xplm_CommandBegin:
        // First, make sure we stop any hat view command
        for(int i = 0; i < 8; ++i) {
            XPLMCommandEnd(hat_cmd[i]);
        }
        is_trimming = true;
        break;
        
    case xplm_CommandEnd:
        // Ensure that we send finishing commands for the trims
        is_trimming = false;
        for(int i = 0; i < 4; ++i) {
            XPLMCommandEnd(trim_cmd[i]);
        }
        break;
        
    default: break;
    }
    return 0;
}

static void forward_cmd(XPLMCommandPhase phase, XPLMCommandRef cmd) {
    switch(phase) {
    case xplm_CommandBegin: XPLMCommandBegin(cmd); break;
    case xplm_CommandContinue: break;
    case xplm_CommandEnd: XPLMCommandEnd(cmd); break;
    default: logMsg("invalid command phase"); break;
    }
}

static int hat_cb(XPLMCommandRef cmd, XPLMCommandPhase phase, void *refcon) {
    UNUSED(cmd);
    int dir = (int)(intptr_t)refcon;
    
    if(!is_enabled || !is_trimming) return 1;
    
    switch(dir) {
    case DIR_UP:
    case DIR_DOWN:
    case DIR_LEFT:
    case DIR_RIGHT:
        forward_cmd(phase, trim_cmd[dir]);
        break;
    case DIR_UP_LEFT:
        break;
    case DIR_DOWN_LEFT:
        break;
    case DIR_DOWN_RIGHT:
        break;
    case DIR_UP_RIGHT:
        break;
    default:
        logMsg("invalid direction %d", dir);
        break;
    }
    return 0;
}

static void update_reverse() {
    if(!is_enabled) return;
    XPLMCheckMenuItem(menu.id, menu.item_rev,
        is_reversed ? xplm_Menu_Checked : xplm_Menu_Unchecked);
}

static void handle_menu(void *menu_ref, void *item_ref) {
    UNUSED(menu_ref);
    UNUSED(item_ref);
    
    switch((intptr_t)item_ref) {
    case MENU_REVERSE:
        is_reversed = !is_reversed;
        save();
        update_reverse();
        break;
    }
}

PLUGIN_API int XPluginStart(char *name, char *signature, char *description) {
    strcpy(name, PLUGIN_NAME);
    strcpy(signature, PLUGIN_SIG);
    strcpy(description, PLUGIN_DESC);
    XPLMEnableFeature("XPLM_USE_NATIVE_PATHS", 1);
    
    log_init(XPLMDebugString, "trimhat");
    
    static const char *hat_cmd_str[] = {
        "sim/general/hat_switch_up",
        "sim/general/hat_switch_down",
        "sim/general/hat_switch_left",
        "sim/general/hat_switch_right",
        "sim/general/hat_switch_up_left",
        "sim/general/hat_switch_down_left",
        "sim/general/hat_switch_down_right",
        "sim/general/hat_switch_up_right",
    };
    
    static const char *trim_cmd_str[] = {
        "sim/flight_controls/pitch_trim_down",
        "sim/flight_controls/pitch_trim_up",
        "sim/flight_controls/rudder_trim_left",
        "sim/flight_controls/rudder_trim_right"
    };
    
    for(int i = 0; i < 4; ++i) {
        trim_cmd[i] = find_command(trim_cmd_str[i]);
    }
    
    for(intptr_t i = 0; i < DIR_COUNT; ++i) {
        hat_cmd[i] = find_command(hat_cmd_str[i]);
        XPLMRegisterCommandHandler(hat_cmd[i], hat_cb, true, (void *)i);
    }
    
    hat_enable = XPLMCreateCommand("amyinorbit/trimhat/trim", "hold for pitch/yaw trim");
    VERIFY3P(hat_enable, !=, NULL);
    XPLMRegisterCommandHandler(hat_enable, enable_cb, true, NULL);
    
    is_trimming = false;
    is_enabled = false;
    
    // Create the menu
    // XPLMMenuID plugins = XPLMFindPluginsMenu();
    
    return 1;
}

PLUGIN_API void	XPluginStop(void) {
    for(intptr_t i = 0; i < DIR_COUNT; ++i) {
        XPLMUnregisterCommandHandler(hat_cmd[i], hat_cb, true, (void *)i);
    }
    XPLMUnregisterCommandHandler(hat_enable, enable_cb, true, NULL);
}

PLUGIN_API int XPluginEnable(void) {
    is_enabled = true;
    logMsg("enabled");
    menu.id = XPLMCreateMenu("TrimHat", NULL, 0, handle_menu, NULL);
    menu.item_rev = XPLMAppendMenuItem(menu.id,
        "Reverse (shift for view pan)",(void *)MENU_REVERSE, 0);
        
    if(!load()) {
        save();
    }
    update_reverse();
	return 1;
}

PLUGIN_API void XPluginDisable(void) {
    XPLMClearAllMenuItems(menu.id);
    XPLMDestroyMenu(menu.id);
    is_enabled = false;
    logMsg("disabled");
}

PLUGIN_API void XPluginReceiveMessage(XPLMPluginID id, intptr_t inMessage, void * inParam) {
    UNUSED(id);
    UNUSED(inParam);
    UNUSED(inMessage);
}
