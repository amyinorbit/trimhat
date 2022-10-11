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
#include <XPLMPlugin.h>
#include <XPLMUtilities.h>
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

XPLMCommandRef hat_enable = NULL;
XPLMCommandRef trim_cmd[4] = {NULL};
XPLMCommandRef hat_cmd[DIR_COUNT] = {NULL};

bool is_enabled = false;
bool is_trimming = false;


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

PLUGIN_API int XPluginStart(char *name, char *signature, char *description) {
    strcpy(name, "trimhat");
    strcpy(signature, "com.amyinorbit.trimhat");
    strcpy(description, "trim your plane using the hat switch");
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
	return 1;
}

PLUGIN_API void XPluginDisable(void) {
    is_enabled = false;
    logMsg("disabled");
}

PLUGIN_API void XPluginReceiveMessage(XPLMPluginID id, intptr_t inMessage, void * inParam) {
    UNUSED(id);
    UNUSED(inParam);
    UNUSED(inMessage);
}
