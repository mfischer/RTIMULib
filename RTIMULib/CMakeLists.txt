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

SET(LIBRTIMU_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/RTFusion.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTFusionRTQF.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUGD20M303DLHC.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMU.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMULSM9DS0.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUMPU9150.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUNull.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTMath.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTFusionKalman4.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUAccelCal.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUGD20HM303D.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUHal.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUMagCal.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUMPU9250.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/RTIMUSettings.cpp)

ADD_LIBRARY(rtimu SHARED ${LIBRTIMU_SRCS})

INSTALL(TARGETS rtimu DESTINATION lib)
