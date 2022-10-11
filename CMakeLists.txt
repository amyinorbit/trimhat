cmake_minimum_required(VERSION 3.12)
cmake_policy(SET CMP0077 NEW)
project(trimhat
    VERSION 1.1.1
    DESCRIPTION "Trimming Utility for X-Plane"
    HOMEPAGE_URL "https://github.com/amyinorbit/trimhat"
    LANGUAGES C
)

include(cmake/xplm.cmake)

if(APPLE)
    set(CMAKE_OSX_ARCHITECTURES "x86_64;arm64")
    set(CMAKE_OSX_DEPLOYMENT_TARGET "10.13")
endif()


option(LIBACFUTILS "Directory where libacfutils is installed" "")
find_package(OpenGL REQUIRED)

use_static_libc()
find_acfutils(${LIBACFUTILS})
find_xplane_sdk("${LIBACFUTILS}/SDK" 301)

add_xplane_plugin(${CMAKE_PROJECT_NAME}
    src/plugin.c
)

target_compile_features(${CMAKE_PROJECT_NAME} PUBLIC c_std_11)
target_compile_options(${CMAKE_PROJECT_NAME} PUBLIC -Wall -Wextra -Werror -fno-exceptions)
target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC m acfutils xplm xpwidgets)
target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE "lib")
