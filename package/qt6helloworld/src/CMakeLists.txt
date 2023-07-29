cmake_minimum_required(VERSION 3.16)
project(qt6helloworld LANGUAGES CXX)


find_package(Qt6 REQUIRED COMPONENTS 
#	Core 
#	Gui 
	Widgets
)

#set(CMAKE_AUTOMOC ON)
qt_standard_project_setup()

qt_add_executable(qt6helloworld
    hello.cpp
)

set_target_properties(qt6helloworld PROPERTIES
    WIN32_EXECUTABLE TRUE
    MACOSX_BUNDLE TRUE
)

target_link_libraries(qt6helloworld PRIVATE
#    Qt6::Core
#    Qt6::Gui
    Qt6::Widgets
)

## Resources:
#set(qt6helloworld_resource_files
#    "clocks.qml"
#    "content/Clock.qml"
#    "content/arrow.png"
#    "content/background.png"
#    "content/center.png"
#    "content/clock-night.png"
#    "content/clock.png"
#    "content/hour.png"
#    "content/minute.png"
#    "content/quit.png"
#    "content/second.png"
#)
#
#qt_add_resources(qt6helloworld "qt6helloworld"
#    PREFIX
#        "/demos/qt6helloworld"
#    FILES
#        ${clocks_resource_files}
#)
#
#install(TARGETS qt6helloworld
#    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
#    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
#    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
#)
