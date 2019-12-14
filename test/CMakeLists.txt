cmake_minimum_required (VERSION 3.15)

project(test-gcc-cmake LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "type of build" FORCE)

enable_testing()

add_executable(test_gcc src/test.cpp)
add_test(test_gcc test_gcc)

target_compile_options(test_gcc PUBLIC --coverage)
target_link_options(test_gcc PUBLIC --coverage)
