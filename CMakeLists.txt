cmake_minimum_required(VERSION 3.12)
cmake_policy(SET CMP0077 NEW)
project(trimhat
    VERSION 1.0.0
    DESCRIPTION "Trimming Utility for X-Plane"
    HOMEPAGE_URL "https://github.com/amyinorbit/trimhat"
    LANGUAGES C
)

add_subdirectory(deps/ccore)

add_library(${CMAKE_PROJECT_NAME}
SHARED
    src/plugin.c
)

include_directories(${CMAKE_PROJECT_NAME} PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/sdk/CHeaders/XPLM")
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ccore::ccore)

add_definitions(-DXPLM200=1 -DXPLM210=1 -DXPLM300=1 -DXPLM301=1)
target_compile_options(${CMAKE_PROJECT_NAME} PUBLIC -Wall -Wextra -pedantic -Werror)

set_target_properties(${CMAKE_PROJECT_NAME}
PROPERTIES
    C_VISIBILITY_PRESET hidden
    VISIBILITY_INLINES_HIDDEN ON
    POSITION_INDEPENDENT_CODE ON
    LINK_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -fno-stack-protector"
)

if(WIN32)
	add_definitions(-DAPL=0 -DIBM=1 -DLIN=0)
elseif(APPLE)
	set(CMAKE_OSX_ARCHITECTURES "x86_64" CACHE STRING "Build architectures for Mac OS X" FORCE)
	set(MACOSX_DEPLOYMENT_TARGET "10.9")
	add_definitions(-DAPL=1 -DIBM=0 -DLIN=0)
else()
	add_definitions(-DAPL=0 -DIBM=0 -DLIN=1)
endif()

set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES PREFIX "")
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES SUFFIX "")
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES OUTPUT_NAME "${CMAKE_PROJECT_NAME}.xpl")

if(APPLE)
    find_library(XPLM_LIBRARY XPLM ${CMAKE_CURRENT_SOURCE_DIR}/sdk/Libraries/Mac/)
    find_library(XPWIDGETS_LIBRARY XPWidgets ${CMAKE_CURRENT_SOURCE_DIR}/sdk/Libraries/Mac/)

    target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ${XPLM_LIBRARY})
    target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ${XPWIDGETS_LIBRARY})
elseif(WIN32)
    set(CMAKE_LIBRARY_PATH ${CMAKE_CURRENT_SOURCE_DIR}/sdk/Libraries/Win/)
    find_library(XPLM_LIBRARY
        NAMES XPLM_64
        PATHS ${CMAKE_CURRENT_SOURCE_DIR}/sdk/Libraries/Win/
        NO_DEFAULT_PATH
        NO_CMAKE_FIND_ROOT_PATH
    )
    find_library(XPWIDGETS_LIBRARY
        XPWidgets_64
        ${CMAKE_CURRENT_SOURCE_DIR}/sdk/Libraries/Win/
        NO_DEFAULT_PATH
        NO_CMAKE_FIND_ROOT_PATH
    )
    target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ${XPLM_LIBRARY})
    target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ${XPWIDGETS_LIBRARY})
endif()

if(WIN32)
	set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/win_x64" )
	set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/win_x64" )
elseif(APPLE)
	set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/mac_x64" )
	set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/mac_x64" )
else()
	set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/lin_x64" )
	set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/lin_x64" )
endif()
