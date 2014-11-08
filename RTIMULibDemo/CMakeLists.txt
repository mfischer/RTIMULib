#
# Copyright 2014 Ettus Research LLC
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
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
SET(CMAKE_AUTOMOC ON)

qt5_wrap_ui(UI_HEADERS RTIMULibDemo.ui)

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})

ADD_EXECUTABLE(rtimu_demo ${DEMO_SRCS} ${UI_HEADERS})
TARGET_LINK_LIBRARIES(rtimu_demo
    rtimu
    ${Qt5Core_QTMAIN_LIBRARIES})

qt5_use_modules(rtimu_demo Widgets)

INSTALL(TARGETS rtimu_demo DESTINATION bin)
