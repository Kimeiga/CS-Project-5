# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/Kimeiga/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Kimeiga/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Kimeiga/CLionProjects/project5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/project5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/project5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project5.dir/flags.make

CMakeFiles/project5.dir/stars.cpp.o: CMakeFiles/project5.dir/flags.make
CMakeFiles/project5.dir/stars.cpp.o: ../stars.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project5.dir/stars.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project5.dir/stars.cpp.o -c /cygdrive/c/Users/Kimeiga/CLionProjects/project5/stars.cpp

CMakeFiles/project5.dir/stars.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project5.dir/stars.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Kimeiga/CLionProjects/project5/stars.cpp > CMakeFiles/project5.dir/stars.cpp.i

CMakeFiles/project5.dir/stars.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project5.dir/stars.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Kimeiga/CLionProjects/project5/stars.cpp -o CMakeFiles/project5.dir/stars.cpp.s

CMakeFiles/project5.dir/stars.cpp.o.requires:

.PHONY : CMakeFiles/project5.dir/stars.cpp.o.requires

CMakeFiles/project5.dir/stars.cpp.o.provides: CMakeFiles/project5.dir/stars.cpp.o.requires
	$(MAKE) -f CMakeFiles/project5.dir/build.make CMakeFiles/project5.dir/stars.cpp.o.provides.build
.PHONY : CMakeFiles/project5.dir/stars.cpp.o.provides

CMakeFiles/project5.dir/stars.cpp.o.provides.build: CMakeFiles/project5.dir/stars.cpp.o


CMakeFiles/project5.dir/utilities.cpp.o: CMakeFiles/project5.dir/flags.make
CMakeFiles/project5.dir/utilities.cpp.o: ../utilities.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/project5.dir/utilities.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project5.dir/utilities.cpp.o -c /cygdrive/c/Users/Kimeiga/CLionProjects/project5/utilities.cpp

CMakeFiles/project5.dir/utilities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project5.dir/utilities.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Kimeiga/CLionProjects/project5/utilities.cpp > CMakeFiles/project5.dir/utilities.cpp.i

CMakeFiles/project5.dir/utilities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project5.dir/utilities.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Kimeiga/CLionProjects/project5/utilities.cpp -o CMakeFiles/project5.dir/utilities.cpp.s

CMakeFiles/project5.dir/utilities.cpp.o.requires:

.PHONY : CMakeFiles/project5.dir/utilities.cpp.o.requires

CMakeFiles/project5.dir/utilities.cpp.o.provides: CMakeFiles/project5.dir/utilities.cpp.o.requires
	$(MAKE) -f CMakeFiles/project5.dir/build.make CMakeFiles/project5.dir/utilities.cpp.o.provides.build
.PHONY : CMakeFiles/project5.dir/utilities.cpp.o.provides

CMakeFiles/project5.dir/utilities.cpp.o.provides.build: CMakeFiles/project5.dir/utilities.cpp.o


# Object files for target project5
project5_OBJECTS = \
"CMakeFiles/project5.dir/stars.cpp.o" \
"CMakeFiles/project5.dir/utilities.cpp.o"

# External object files for target project5
project5_EXTERNAL_OBJECTS =

project5.exe: CMakeFiles/project5.dir/stars.cpp.o
project5.exe: CMakeFiles/project5.dir/utilities.cpp.o
project5.exe: CMakeFiles/project5.dir/build.make
project5.exe: CMakeFiles/project5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable project5.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project5.dir/build: project5.exe

.PHONY : CMakeFiles/project5.dir/build

CMakeFiles/project5.dir/requires: CMakeFiles/project5.dir/stars.cpp.o.requires
CMakeFiles/project5.dir/requires: CMakeFiles/project5.dir/utilities.cpp.o.requires

.PHONY : CMakeFiles/project5.dir/requires

CMakeFiles/project5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project5.dir/clean

CMakeFiles/project5.dir/depend:
	cd /cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Kimeiga/CLionProjects/project5 /cygdrive/c/Users/Kimeiga/CLionProjects/project5 /cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug /cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug /cygdrive/c/Users/Kimeiga/CLionProjects/project5/cmake-build-debug/CMakeFiles/project5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project5.dir/depend

