cmake_minimum_required(VERSION 3.16)
project(enzyme_test LANGUAGES C)
find_package(Enzyme REQUIRED)

add_library(mylib mylib.c)
target_link_libraries(mylib LLDEnzymeFlags)

add_executable(enzyme_test main.c)
target_link_libraries(enzyme_test LLDEnzymeFlags mylib)
