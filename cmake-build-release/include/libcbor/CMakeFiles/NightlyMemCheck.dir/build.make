# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /opt/clion-2017.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thongpv87/CLionProjects/CBORBenchmark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release

# Utility rule file for NightlyMemCheck.

# Include the progress variables for this target.
include include/libcbor/CMakeFiles/NightlyMemCheck.dir/progress.make

include/libcbor/CMakeFiles/NightlyMemCheck:
	cd /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release/include/libcbor && /opt/clion-2017.1.1/bin/cmake/bin/ctest -D NightlyMemCheck

NightlyMemCheck: include/libcbor/CMakeFiles/NightlyMemCheck
NightlyMemCheck: include/libcbor/CMakeFiles/NightlyMemCheck.dir/build.make

.PHONY : NightlyMemCheck

# Rule to build all files generated by this target.
include/libcbor/CMakeFiles/NightlyMemCheck.dir/build: NightlyMemCheck

.PHONY : include/libcbor/CMakeFiles/NightlyMemCheck.dir/build

include/libcbor/CMakeFiles/NightlyMemCheck.dir/clean:
	cd /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release/include/libcbor && $(CMAKE_COMMAND) -P CMakeFiles/NightlyMemCheck.dir/cmake_clean.cmake
.PHONY : include/libcbor/CMakeFiles/NightlyMemCheck.dir/clean

include/libcbor/CMakeFiles/NightlyMemCheck.dir/depend:
	cd /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thongpv87/CLionProjects/CBORBenchmark /home/thongpv87/CLionProjects/CBORBenchmark/include/libcbor /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release/include/libcbor /home/thongpv87/CLionProjects/CBORBenchmark/cmake-build-release/include/libcbor/CMakeFiles/NightlyMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/libcbor/CMakeFiles/NightlyMemCheck.dir/depend

