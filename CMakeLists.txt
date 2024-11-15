cmake_minimum_required(VERSION 3.5.0)
project(my VERSION 0.1.0 LANGUAGES C CXX)

set(MAIN_SOURCE main.cpp)

set(SOURCE_FILES
    src/LinkedList.cpp
)

set(HEADER_FILES
    src/LinkedList.h
)

add_executable(my ${MAIN_SOURCE} ${SOURCE_FILES} ${HEADER_FILES})

# Если вы используете Qt, добавьте необходимые модули
# find_package(Qt5 COMPONENTS Core Gui Widgets REQUIRED)
# target_link_libraries(my Qt5::Core Qt5::Gui Qt5::Widgets)