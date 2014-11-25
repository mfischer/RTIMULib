#
# Copyright 2014 Ettus Research LLC
#

SET(DEMO_SRCS
    AccelCalDlg.cpp
    RTIMULibDemo.cpp
    IMUThread.cpp
    MagCalDlg.cpp
    SelectIMUDlg.cpp
    RTIMULibDemo.cpp
    SelectFusionDlg.cpp
    main.cpp)

FIND_PACKAGE(Qt5Widgets)
FIND_PACKAGE(Qt5Gui)
SET(CMAKE_AUTOMOC ON)

qt5_wrap_ui(UI_HEADERS RTIMULibDemo.ui)

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})

ADD_EXECUTABLE(rtimu-demo ${DEMO_SRCS} ${UI_HEADERS})
TARGET_LINK_LIBRARIES(rtimu-demo
    rtimu)

qt5_use_modules(rtimu-demo Widgets Gui)

INSTALL(TARGETS rtimu-demo DESTINATION bin)
