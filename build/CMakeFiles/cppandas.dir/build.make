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
include CMakeFiles/cppandas.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cppandas.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cppandas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cppandas.dir/flags.make

CMakeFiles/cppandas.dir/codegen:
.PHONY : CMakeFiles/cppandas.dir/codegen

CMakeFiles/cppandas.dir/src/cppandas.cpp.obj: CMakeFiles/cppandas.dir/flags.make
CMakeFiles/cppandas.dir/src/cppandas.cpp.obj: CMakeFiles/cppandas.dir/includes_CXX.rsp
CMakeFiles/cppandas.dir/src/cppandas.cpp.obj: A:/dev/cppandas/src/cppandas.cpp
CMakeFiles/cppandas.dir/src/cppandas.cpp.obj: CMakeFiles/cppandas.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=A:\dev\cppandas\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cppandas.dir/src/cppandas.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cppandas.dir/src/cppandas.cpp.obj -MF CMakeFiles\cppandas.dir\src\cppandas.cpp.obj.d -o CMakeFiles\cppandas.dir\src\cppandas.cpp.obj -c A:\dev\cppandas\src\cppandas.cpp

CMakeFiles/cppandas.dir/src/cppandas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cppandas.dir/src/cppandas.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E A:\dev\cppandas\src\cppandas.cpp > CMakeFiles\cppandas.dir\src\cppandas.cpp.i

CMakeFiles/cppandas.dir/src/cppandas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cppandas.dir/src/cppandas.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S A:\dev\cppandas\src\cppandas.cpp -o CMakeFiles\cppandas.dir\src\cppandas.cpp.s

# Object files for target cppandas
cppandas_OBJECTS = \
"CMakeFiles/cppandas.dir/src/cppandas.cpp.obj"

# External object files for target cppandas
cppandas_EXTERNAL_OBJECTS =

libcppandas.a: CMakeFiles/cppandas.dir/src/cppandas.cpp.obj
libcppandas.a: CMakeFiles/cppandas.dir/build.make
libcppandas.a: CMakeFiles/cppandas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=A:\dev\cppandas\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libcppandas.a"
	$(CMAKE_COMMAND) -P CMakeFiles\cppandas.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cppandas.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cppandas.dir/build: libcppandas.a
.PHONY : CMakeFiles/cppandas.dir/build

CMakeFiles/cppandas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cppandas.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cppandas.dir/clean

CMakeFiles/cppandas.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" A:\dev\cppandas A:\dev\cppandas A:\dev\cppandas\build A:\dev\cppandas\build A:\dev\cppandas\build\CMakeFiles\cppandas.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/cppandas.dir/depend

