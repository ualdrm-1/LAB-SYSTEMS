# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ualdrm/Studies/My

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ualdrm/Studies/My/build

# Include any dependencies generated for this target.
include CMakeFiles/yandex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/yandex.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/yandex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yandex.dir/flags.make

CMakeFiles/yandex.dir/main.cpp.o: CMakeFiles/yandex.dir/flags.make
CMakeFiles/yandex.dir/main.cpp.o: /home/ualdrm/Studies/My/main.cpp
CMakeFiles/yandex.dir/main.cpp.o: CMakeFiles/yandex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ualdrm/Studies/My/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yandex.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/yandex.dir/main.cpp.o -MF CMakeFiles/yandex.dir/main.cpp.o.d -o CMakeFiles/yandex.dir/main.cpp.o -c /home/ualdrm/Studies/My/main.cpp

CMakeFiles/yandex.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/yandex.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ualdrm/Studies/My/main.cpp > CMakeFiles/yandex.dir/main.cpp.i

CMakeFiles/yandex.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/yandex.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ualdrm/Studies/My/main.cpp -o CMakeFiles/yandex.dir/main.cpp.s

# Object files for target yandex
yandex_OBJECTS = \
"CMakeFiles/yandex.dir/main.cpp.o"

# External object files for target yandex
yandex_EXTERNAL_OBJECTS =

yandex: CMakeFiles/yandex.dir/main.cpp.o
yandex: CMakeFiles/yandex.dir/build.make
yandex: CMakeFiles/yandex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ualdrm/Studies/My/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable yandex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yandex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yandex.dir/build: yandex
.PHONY : CMakeFiles/yandex.dir/build

CMakeFiles/yandex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yandex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yandex.dir/clean

CMakeFiles/yandex.dir/depend:
	cd /home/ualdrm/Studies/My/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ualdrm/Studies/My /home/ualdrm/Studies/My /home/ualdrm/Studies/My/build /home/ualdrm/Studies/My/build /home/ualdrm/Studies/My/build/CMakeFiles/yandex.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/yandex.dir/depend

