cmake_minimum_required(VERSION 3.11)

set(CMAKE_CXX_STANDARD          17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB C RELATIVE ${CMAKE_SOURCE_DIR} "src/*.c*")
file(GLOB H RELATIVE ${CMAKE_SOURCE_DIR} "inc/*.h*")

include_directories(
    "${CMAKE_SOURCE_DIR}/inc"
    "${CMAKE_SOURCE_DIR}/tmp"
)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

add_executable(${APP}
    ${C} ${H} ${R}
    ${FLEX_lexer_OUTPUTS} ${BISON_parser_OUTPUTS}
)

