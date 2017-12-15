cmake_minimum_required(VERSION 3.8)
project(project5)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES stars.cpp utilities.cpp utilities.h)
add_executable(project5 ${SOURCE_FILES})