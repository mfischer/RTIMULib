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

SET(DEMO_HEADERS
    AccelCalDlg.h
    MagCalDlg.h
    SelectFusionDlg.h
    IMUThread.h
    RTIMULibDemo.h
    SelectIMUDlg.h)

FIND_PACKAGE(Qt4)
INCLUDE(${QT_USE_FILE})

QT4_WRAP_UI(UI_HEADERS RTIMULibDemo.ui)

QT4_WRAP_CPP(HEADERS_MOC ${DEMO_HEADERS})

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})
INCLUDE_DIRECTORIES(${QT_HEADERS})

ADD_EXECUTABLE(rtimu-demo ${DEMO_SRCS} ${UI_HEADERS} ${HEADERS_MOC})
TARGET_LINK_LIBRARIES(rtimu-demo
    rtimu ${QT_LIBRARIES})

INSTALL(TARGETS rtimu-demo DESTINATION bin)
