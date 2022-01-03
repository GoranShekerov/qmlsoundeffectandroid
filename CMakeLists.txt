cmake_minimum_required(VERSION 3.16)

project(qmlsoundeffect VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appqmlsoundeffect
    main.cpp
)

qt_add_qml_module(appqmlsoundeffect
    URI qmlsoundeffect
    VERSION 1.0
    QML_FILES main.qml
    RESOURCES click.wav
)

target_compile_definitions(appqmlsoundeffect
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appqmlsoundeffect
    PRIVATE Qt6::Quick)
