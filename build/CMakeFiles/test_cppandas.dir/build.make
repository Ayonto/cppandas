# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = A:\dev\cppandas

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = A:\dev\cppandas\build

# Include any dependencies generated for this target.
include CMakeFiles/test_cppandas.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_cppandas.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_cppandas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_cppandas.dir/flags.make

CMakeFiles/test_cppandas.dir/codegen:
.PHONY : CMakeFiles/test_cppandas.dir/codegen

CMakeFiles/test_cppandas.dir/test/main.cpp.obj: CMakeFiles/test_cppandas.dir/flags.make
CMakeFiles/test_cppandas.dir/test/main.cpp.obj: CMakeFiles/test_cppandas.dir/includes_CXX.rsp
CMakeFiles/test_cppandas.dir/test/main.cpp.obj: A:/dev/cppandas/test/main.cpp
CMakeFiles/test_cppandas.dir/test/main.cpp.obj: CMakeFiles/test_cppandas.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=A:\dev\cppandas\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_cppandas.dir/test/main.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_cppandas.dir/test/main.cpp.obj -MF CMakeFiles\test_cppandas.dir\test\main.cpp.obj.d -o CMakeFiles\test_cppandas.dir\test\main.cpp.obj -c A:\dev\cppandas\test\main.cpp

CMakeFiles/test_cppandas.dir/test/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_cppandas.dir/test/main.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E A:\dev\cppandas\test\main.cpp > CMakeFiles\test_cppandas.dir\test\main.cpp.i

CMakeFiles/test_cppandas.dir/test/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_cppandas.dir/test/main.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S A:\dev\cppandas\test\main.cpp -o CMakeFiles\test_cppandas.dir\test\main.cpp.s

# Object files for target test_cppandas
test_cppandas_OBJECTS = \
"CMakeFiles/test_cppandas.dir/test/main.cpp.obj"

# External object files for target test_cppandas
test_cppandas_EXTERNAL_OBJECTS =

test_cppandas.exe: CMakeFiles/test_cppandas.dir/test/main.cpp.obj
test_cppandas.exe: CMakeFiles/test_cppandas.dir/build.make
test_cppandas.exe: libcppandas.a
test_cppandas.exe: CMakeFiles/test_cppandas.dir/linkLibs.rsp
test_cppandas.exe: CMakeFiles/test_cppandas.dir/objects1.rsp
test_cppandas.exe: CMakeFiles/test_cppandas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=A:\dev\cppandas\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_cppandas.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test_cppandas.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_cppandas.dir/build: test_cppandas.exe
.PHONY : CMakeFiles/test_cppandas.dir/build

CMakeFiles/test_cppandas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\test_cppandas.dir\cmake_clean.cmake
.PHONY : CMakeFiles/test_cppandas.dir/clean

CMakeFiles/test_cppandas.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" A:\dev\cppandas A:\dev\cppandas A:\dev\cppandas\build A:\dev\cppandas\build A:\dev\cppandas\build\CMakeFiles\test_cppandas.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_cppandas.dir/depend

