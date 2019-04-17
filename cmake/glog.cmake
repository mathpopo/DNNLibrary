include(${PROJECT_SOURCE_DIR}/cmake/utils.cmake)

macro(configure_glog)
    message(STATUS "Configureing glog...")
    option(BUILD_TESTING "" OFF)
    option(WITH_GFLAGS "" OFF)
    add_subdirectory(${PROJECT_SOURCE_DIR}/third_party/glog)
    add_msvc_runtime_flag(glog)
endmacro()
