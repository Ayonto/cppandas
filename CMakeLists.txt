cmake_minimum_required(VERSION 3.10.0)
project(cppandas VERSION 0.1.0 LANGUAGES C CXX)

include_directories(include)

add_library(cppandas STATIC src/cppandas.cpp)

add_executable(test_cppandas test/main.cpp)
target_link_libraries(test_cppandas cppandas)

