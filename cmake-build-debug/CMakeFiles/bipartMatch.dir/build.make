# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/waxnkw/.local/share/umake/ide/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/waxnkw/.local/share/umake/ide/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/waxnkw/CLionProjects/bipartMatch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/bipartMatch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bipartMatch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bipartMatch.dir/flags.make

CMakeFiles/bipartMatch.dir/main.cpp.o: CMakeFiles/bipartMatch.dir/flags.make
CMakeFiles/bipartMatch.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bipartMatch.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bipartMatch.dir/main.cpp.o -c /home/waxnkw/CLionProjects/bipartMatch/main.cpp

CMakeFiles/bipartMatch.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bipartMatch.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waxnkw/CLionProjects/bipartMatch/main.cpp > CMakeFiles/bipartMatch.dir/main.cpp.i

CMakeFiles/bipartMatch.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bipartMatch.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waxnkw/CLionProjects/bipartMatch/main.cpp -o CMakeFiles/bipartMatch.dir/main.cpp.s

CMakeFiles/bipartMatch.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/bipartMatch.dir/main.cpp.o.requires

CMakeFiles/bipartMatch.dir/main.cpp.o.provides: CMakeFiles/bipartMatch.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/bipartMatch.dir/build.make CMakeFiles/bipartMatch.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/bipartMatch.dir/main.cpp.o.provides

CMakeFiles/bipartMatch.dir/main.cpp.o.provides.build: CMakeFiles/bipartMatch.dir/main.cpp.o


# Object files for target bipartMatch
bipartMatch_OBJECTS = \
"CMakeFiles/bipartMatch.dir/main.cpp.o"

# External object files for target bipartMatch
bipartMatch_EXTERNAL_OBJECTS =

bipartMatch: CMakeFiles/bipartMatch.dir/main.cpp.o
bipartMatch: CMakeFiles/bipartMatch.dir/build.make
bipartMatch: CMakeFiles/bipartMatch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bipartMatch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bipartMatch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bipartMatch.dir/build: bipartMatch

.PHONY : CMakeFiles/bipartMatch.dir/build

CMakeFiles/bipartMatch.dir/requires: CMakeFiles/bipartMatch.dir/main.cpp.o.requires

.PHONY : CMakeFiles/bipartMatch.dir/requires

CMakeFiles/bipartMatch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bipartMatch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bipartMatch.dir/clean

CMakeFiles/bipartMatch.dir/depend:
	cd /home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/waxnkw/CLionProjects/bipartMatch /home/waxnkw/CLionProjects/bipartMatch /home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug /home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug /home/waxnkw/CLionProjects/bipartMatch/cmake-build-debug/CMakeFiles/bipartMatch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bipartMatch.dir/depend
