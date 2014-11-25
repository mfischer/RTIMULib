#
# Copyright 2014 Ettus Research LLC
#

SET(DRIVE_SRCS
    RTIMULibDrive.cpp)

ADD_EXECUTABLE(rtimu-drive ${DRIVE_SRCS})
TARGET_LINK_LIBRARIES(rtimu-drive rtimu)

INSTALL(TARGETS rtimu-drive DESTINATION bin)
