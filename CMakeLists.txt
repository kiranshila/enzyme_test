cmake_minimum_required(VERSION 3.16)

project(enzyme_test LANGUAGES C)

find_package(Enzyme REQUIRED)
get_property(importTargetsAfter DIRECTORY "${CMAKE_SOURCE_DIR}" PROPERTY IMPORTED_TARGETS)

add_executable(enzyme_test_1 main.c)
target_link_libraries(enzyme_test_1 PUBLIC ClangEnzymeFlags)

add_executable(enzyme_test_2 main.c)
target_link_libraries(enzyme_test_2 PUBLIC LLDEnzymeFlags)