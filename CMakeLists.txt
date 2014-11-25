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

########################################################################
#IF(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
#    MESSAGE(FATAL_ERROR "Prevented in-tree built. This is bad practice.")
#ENDIF(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})

########################################################################
# Project setup
########################################################################
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
PROJECT(RTIMULib CXX)
ENABLE_TESTING()

#make sure our local CMake Modules path comes first
list(INSERT CMAKE_MODULE_PATH 0 ${CMAKE_SOURCE_DIR}/cmake/Modules)

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/RTIMULib)

ADD_SUBDIRECTORY(RTIMULib)
ADD_SUBDIRECTORY(RTIMULibDrive)
ADD_SUBDIRECTORY(RTIMULibCal)
ADD_SUBDIRECTORY(RTIMULibDemo)
ADD_SUBDIRECTORY(RTHostIMUGL)
ADD_SUBDIRECTORY(RTArduLinkHost)

list(INSERT CMAKE_MODULE_PATH 0 ${CMAKE_SOURCE_DIR}/cmake/Modules)

MESSAGE(STATUS "Using install prefix: ${CMAKE_INSTALL_PREFIX}")
