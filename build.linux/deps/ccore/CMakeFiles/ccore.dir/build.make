# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amy/projects/trimhat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amy/projects/trimhat/build.linux

# Include any dependencies generated for this target.
include deps/ccore/CMakeFiles/ccore.dir/depend.make

# Include the progress variables for this target.
include deps/ccore/CMakeFiles/ccore.dir/progress.make

# Include the compile flags for this target's objects.
include deps/ccore/CMakeFiles/ccore.dir/flags.make

deps/ccore/CMakeFiles/ccore.dir/src/format.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/format.c.o: ../deps/ccore/src/format.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/format.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/format.c.o -c /home/amy/projects/trimhat/deps/ccore/src/format.c

deps/ccore/CMakeFiles/ccore.dir/src/format.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/format.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/format.c > CMakeFiles/ccore.dir/src/format.c.i

deps/ccore/CMakeFiles/ccore.dir/src/format.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/format.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/format.c -o CMakeFiles/ccore.dir/src/format.c.s

deps/ccore/CMakeFiles/ccore.dir/src/list.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/list.c.o: ../deps/ccore/src/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/list.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/list.c.o -c /home/amy/projects/trimhat/deps/ccore/src/list.c

deps/ccore/CMakeFiles/ccore.dir/src/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/list.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/list.c > CMakeFiles/ccore.dir/src/list.c.i

deps/ccore/CMakeFiles/ccore.dir/src/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/list.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/list.c -o CMakeFiles/ccore.dir/src/list.c.s

deps/ccore/CMakeFiles/ccore.dir/src/log.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/log.c.o: ../deps/ccore/src/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/log.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/log.c.o -c /home/amy/projects/trimhat/deps/ccore/src/log.c

deps/ccore/CMakeFiles/ccore.dir/src/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/log.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/log.c > CMakeFiles/ccore.dir/src/log.c.i

deps/ccore/CMakeFiles/ccore.dir/src/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/log.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/log.c -o CMakeFiles/ccore.dir/src/log.c.s

deps/ccore/CMakeFiles/ccore.dir/src/math.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/math.c.o: ../deps/ccore/src/math.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/math.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/math.c.o -c /home/amy/projects/trimhat/deps/ccore/src/math.c

deps/ccore/CMakeFiles/ccore.dir/src/math.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/math.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/math.c > CMakeFiles/ccore.dir/src/math.c.i

deps/ccore/CMakeFiles/ccore.dir/src/math.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/math.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/math.c -o CMakeFiles/ccore.dir/src/math.c.s

deps/ccore/CMakeFiles/ccore.dir/src/memory.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/memory.c.o: ../deps/ccore/src/memory.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/memory.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/memory.c.o -c /home/amy/projects/trimhat/deps/ccore/src/memory.c

deps/ccore/CMakeFiles/ccore.dir/src/memory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/memory.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/memory.c > CMakeFiles/ccore.dir/src/memory.c.i

deps/ccore/CMakeFiles/ccore.dir/src/memory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/memory.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/memory.c -o CMakeFiles/ccore.dir/src/memory.c.s

deps/ccore/CMakeFiles/ccore.dir/src/table.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/table.c.o: ../deps/ccore/src/table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/table.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/table.c.o -c /home/amy/projects/trimhat/deps/ccore/src/table.c

deps/ccore/CMakeFiles/ccore.dir/src/table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/table.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/table.c > CMakeFiles/ccore.dir/src/table.c.i

deps/ccore/CMakeFiles/ccore.dir/src/table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/table.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/table.c -o CMakeFiles/ccore.dir/src/table.c.s

deps/ccore/CMakeFiles/ccore.dir/src/value.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/value.c.o: ../deps/ccore/src/value.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/value.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/value.c.o -c /home/amy/projects/trimhat/deps/ccore/src/value.c

deps/ccore/CMakeFiles/ccore.dir/src/value.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/value.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/value.c > CMakeFiles/ccore.dir/src/value.c.i

deps/ccore/CMakeFiles/ccore.dir/src/value.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/value.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/value.c -o CMakeFiles/ccore.dir/src/value.c.s

deps/ccore/CMakeFiles/ccore.dir/src/filesystem.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/filesystem.c.o: ../deps/ccore/src/filesystem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/filesystem.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/filesystem.c.o -c /home/amy/projects/trimhat/deps/ccore/src/filesystem.c

deps/ccore/CMakeFiles/ccore.dir/src/filesystem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/filesystem.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/filesystem.c > CMakeFiles/ccore.dir/src/filesystem.c.i

deps/ccore/CMakeFiles/ccore.dir/src/filesystem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/filesystem.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/filesystem.c -o CMakeFiles/ccore.dir/src/filesystem.c.s

deps/ccore/CMakeFiles/ccore.dir/src/debug.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/debug.c.o: ../deps/ccore/src/debug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/debug.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/debug.c.o -c /home/amy/projects/trimhat/deps/ccore/src/debug.c

deps/ccore/CMakeFiles/ccore.dir/src/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/debug.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/debug.c > CMakeFiles/ccore.dir/src/debug.c.i

deps/ccore/CMakeFiles/ccore.dir/src/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/debug.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/debug.c -o CMakeFiles/ccore.dir/src/debug.c.s

deps/ccore/CMakeFiles/ccore.dir/src/tpool.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/tpool.c.o: ../deps/ccore/src/tpool.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/tpool.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/tpool.c.o -c /home/amy/projects/trimhat/deps/ccore/src/tpool.c

deps/ccore/CMakeFiles/ccore.dir/src/tpool.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/tpool.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/tpool.c > CMakeFiles/ccore.dir/src/tpool.c.i

deps/ccore/CMakeFiles/ccore.dir/src/tpool.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/tpool.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/tpool.c -o CMakeFiles/ccore.dir/src/tpool.c.s

deps/ccore/CMakeFiles/ccore.dir/src/cfg.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/cfg.c.o: ../deps/ccore/src/cfg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/cfg.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/cfg.c.o -c /home/amy/projects/trimhat/deps/ccore/src/cfg.c

deps/ccore/CMakeFiles/ccore.dir/src/cfg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/cfg.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/cfg.c > CMakeFiles/ccore.dir/src/cfg.c.i

deps/ccore/CMakeFiles/ccore.dir/src/cfg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/cfg.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/cfg.c -o CMakeFiles/ccore.dir/src/cfg.c.s

deps/ccore/CMakeFiles/ccore.dir/src/time.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/time.c.o: ../deps/ccore/src/time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/time.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/time.c.o -c /home/amy/projects/trimhat/deps/ccore/src/time.c

deps/ccore/CMakeFiles/ccore.dir/src/time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/time.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/time.c > CMakeFiles/ccore.dir/src/time.c.i

deps/ccore/CMakeFiles/ccore.dir/src/time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/time.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/time.c -o CMakeFiles/ccore.dir/src/time.c.s

deps/ccore/CMakeFiles/ccore.dir/src/run_loop.c.o: deps/ccore/CMakeFiles/ccore.dir/flags.make
deps/ccore/CMakeFiles/ccore.dir/src/run_loop.c.o: ../deps/ccore/src/run_loop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object deps/ccore/CMakeFiles/ccore.dir/src/run_loop.c.o"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccore.dir/src/run_loop.c.o -c /home/amy/projects/trimhat/deps/ccore/src/run_loop.c

deps/ccore/CMakeFiles/ccore.dir/src/run_loop.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccore.dir/src/run_loop.c.i"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amy/projects/trimhat/deps/ccore/src/run_loop.c > CMakeFiles/ccore.dir/src/run_loop.c.i

deps/ccore/CMakeFiles/ccore.dir/src/run_loop.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccore.dir/src/run_loop.c.s"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amy/projects/trimhat/deps/ccore/src/run_loop.c -o CMakeFiles/ccore.dir/src/run_loop.c.s

# Object files for target ccore
ccore_OBJECTS = \
"CMakeFiles/ccore.dir/src/format.c.o" \
"CMakeFiles/ccore.dir/src/list.c.o" \
"CMakeFiles/ccore.dir/src/log.c.o" \
"CMakeFiles/ccore.dir/src/math.c.o" \
"CMakeFiles/ccore.dir/src/memory.c.o" \
"CMakeFiles/ccore.dir/src/table.c.o" \
"CMakeFiles/ccore.dir/src/value.c.o" \
"CMakeFiles/ccore.dir/src/filesystem.c.o" \
"CMakeFiles/ccore.dir/src/debug.c.o" \
"CMakeFiles/ccore.dir/src/tpool.c.o" \
"CMakeFiles/ccore.dir/src/cfg.c.o" \
"CMakeFiles/ccore.dir/src/time.c.o" \
"CMakeFiles/ccore.dir/src/run_loop.c.o"

# External object files for target ccore
ccore_EXTERNAL_OBJECTS =

deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/format.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/list.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/log.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/math.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/memory.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/table.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/value.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/filesystem.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/debug.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/tpool.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/cfg.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/time.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/src/run_loop.c.o
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/build.make
deps/ccore/libccore.a: deps/ccore/CMakeFiles/ccore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amy/projects/trimhat/build.linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libccore.a"
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && $(CMAKE_COMMAND) -P CMakeFiles/ccore.dir/cmake_clean_target.cmake
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ccore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/ccore/CMakeFiles/ccore.dir/build: deps/ccore/libccore.a

.PHONY : deps/ccore/CMakeFiles/ccore.dir/build

deps/ccore/CMakeFiles/ccore.dir/clean:
	cd /home/amy/projects/trimhat/build.linux/deps/ccore && $(CMAKE_COMMAND) -P CMakeFiles/ccore.dir/cmake_clean.cmake
.PHONY : deps/ccore/CMakeFiles/ccore.dir/clean

deps/ccore/CMakeFiles/ccore.dir/depend:
	cd /home/amy/projects/trimhat/build.linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amy/projects/trimhat /home/amy/projects/trimhat/deps/ccore /home/amy/projects/trimhat/build.linux /home/amy/projects/trimhat/build.linux/deps/ccore /home/amy/projects/trimhat/build.linux/deps/ccore/CMakeFiles/ccore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/ccore/CMakeFiles/ccore.dir/depend
