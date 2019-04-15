# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

# Sets the minimum version of CMake required to build the native library.

cmake_minimum_required(VERSION 3.5.2)
project(DNNLibrary)

option(DNN_BUILD_BIN "Build binaries" ON)
option(DNN_BUILD_JNI "Build Java Wrapper" OFF)
option(DNN_SYSTEM_PROTOBUF "Use system protobuf when building onnx2daq" OFF)

set(DNN_ROOT_DIR ${PROJECT_SOURCE_DIR})

include(cmake/system.cmake)
include(cmake/glog.cmake)
include(cmake/common.cmake)

configure_glog()

set (CMAKE_CXX_STANDARD 17)

add_compile_options(-Os -fno-rtti)
add_subdirectory(dnnlibrary)
add_subdirectory(binaries)
