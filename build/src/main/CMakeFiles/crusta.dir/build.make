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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tarptaeya/Desktop/Crusta

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tarptaeya/Desktop/Crusta/build

# Include any dependencies generated for this target.
include src/main/CMakeFiles/crusta.dir/depend.make

# Include the progress variables for this target.
include src/main/CMakeFiles/crusta.dir/progress.make

# Include the compile flags for this target's objects.
include src/main/CMakeFiles/crusta.dir/flags.make

src/main/CMakeFiles/crusta.dir/main.cpp.o: src/main/CMakeFiles/crusta.dir/flags.make
src/main/CMakeFiles/crusta.dir/main.cpp.o: ../src/main/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tarptaeya/Desktop/Crusta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/main/CMakeFiles/crusta.dir/main.cpp.o"
	cd /home/tarptaeya/Desktop/Crusta/build/src/main && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/crusta.dir/main.cpp.o -c /home/tarptaeya/Desktop/Crusta/src/main/main.cpp

src/main/CMakeFiles/crusta.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crusta.dir/main.cpp.i"
	cd /home/tarptaeya/Desktop/Crusta/build/src/main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tarptaeya/Desktop/Crusta/src/main/main.cpp > CMakeFiles/crusta.dir/main.cpp.i

src/main/CMakeFiles/crusta.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crusta.dir/main.cpp.s"
	cd /home/tarptaeya/Desktop/Crusta/build/src/main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tarptaeya/Desktop/Crusta/src/main/main.cpp -o CMakeFiles/crusta.dir/main.cpp.s

src/main/CMakeFiles/crusta.dir/main.cpp.o.requires:

.PHONY : src/main/CMakeFiles/crusta.dir/main.cpp.o.requires

src/main/CMakeFiles/crusta.dir/main.cpp.o.provides: src/main/CMakeFiles/crusta.dir/main.cpp.o.requires
	$(MAKE) -f src/main/CMakeFiles/crusta.dir/build.make src/main/CMakeFiles/crusta.dir/main.cpp.o.provides.build
.PHONY : src/main/CMakeFiles/crusta.dir/main.cpp.o.provides

src/main/CMakeFiles/crusta.dir/main.cpp.o.provides.build: src/main/CMakeFiles/crusta.dir/main.cpp.o


# Object files for target crusta
crusta_OBJECTS = \
"CMakeFiles/crusta.dir/main.cpp.o"

# External object files for target crusta
crusta_EXTERNAL_OBJECTS =

src/main/crusta: src/main/CMakeFiles/crusta.dir/main.cpp.o
src/main/crusta: src/main/CMakeFiles/crusta.dir/build.make
src/main/crusta: src/lib/libCrustaPrivate.so
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5WebEngineWidgets.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5WebEngineCore.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Positioning.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Quick.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5PrintSupport.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Widgets.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Gui.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Sql.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5WebChannel.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Qml.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Network.so.5.12.0
src/main/crusta: /home/tarptaeya/Qt5.12.0/5.12.0/gcc_64/lib/libQt5Core.so.5.12.0
src/main/crusta: src/main/CMakeFiles/crusta.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tarptaeya/Desktop/Crusta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable crusta"
	cd /home/tarptaeya/Desktop/Crusta/build/src/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crusta.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/main/CMakeFiles/crusta.dir/build: src/main/crusta

.PHONY : src/main/CMakeFiles/crusta.dir/build

src/main/CMakeFiles/crusta.dir/requires: src/main/CMakeFiles/crusta.dir/main.cpp.o.requires

.PHONY : src/main/CMakeFiles/crusta.dir/requires

src/main/CMakeFiles/crusta.dir/clean:
	cd /home/tarptaeya/Desktop/Crusta/build/src/main && $(CMAKE_COMMAND) -P CMakeFiles/crusta.dir/cmake_clean.cmake
.PHONY : src/main/CMakeFiles/crusta.dir/clean

src/main/CMakeFiles/crusta.dir/depend:
	cd /home/tarptaeya/Desktop/Crusta/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tarptaeya/Desktop/Crusta /home/tarptaeya/Desktop/Crusta/src/main /home/tarptaeya/Desktop/Crusta/build /home/tarptaeya/Desktop/Crusta/build/src/main /home/tarptaeya/Desktop/Crusta/build/src/main/CMakeFiles/crusta.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/main/CMakeFiles/crusta.dir/depend
