cmake_minimum_required(VERSION 3.29)
project(mylibrary)

set(MYLIBRARY_VERSION "1.0.0")

add_library(mylibrary STATIC
        src/mylibrary.cpp
)

target_include_directories(mylibrary PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

set_target_properties(mylibrary PROPERTIES
        VERSION ${MYLIBRARY_VERSION}
        SOVERSION 1
)