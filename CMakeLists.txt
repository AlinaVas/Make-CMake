cmake_minimum_required(VERSION 2.8)

project(myProj)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")

add_library(shared SHARED reminder.cpp)

add_executable(myApp main.cpp)

target_link_libraries(myApp shared)
