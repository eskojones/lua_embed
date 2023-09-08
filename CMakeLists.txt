cmake_minimum_required(VERSION 3.20)
set(CMAKE_C_COMPILER gcc)
set(CMAKE_SYSTEM_PROCESSOR arm64)

project(lua_embed C)

set(CMAKE_C_STANDARD 99)

file(GLOB SOURCES *.c)
add_executable(lua_embed ${SOURCES})

include_directories(SYSTEM /usr/local/include)

add_library(lua STATIC IMPORTED)
set_target_properties(
        lua
        PROPERTIES
        IMPORTED_LOCATION "/opt/homebrew/lib/liblua.a"
        INTERFACE_INCLUDE_DIRECTORIES "/opt/homebrew/include"
)

target_link_libraries(lua_embed lua)
