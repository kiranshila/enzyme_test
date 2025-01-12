cmake_minimum_required(VERSION 3.16)
project(enzyme_test LANGUAGES C)
find_package(Enzyme REQUIRED)

add_library(mylib mylib.c)
target_link_libraries(mylib LLDEnzymeFlags)

add_executable(lld_enzyme_test main_lld.c)
target_link_libraries(lld_enzyme_test LLDEnzymeFlags mylib)

add_executable(clang_enzyme_test main_clang.c)
target_link_libraries(clang_enzyme_test ClangEnzymeFlags)
