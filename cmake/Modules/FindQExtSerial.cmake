# This file is part of RTIMULib
#
# Copyright (c) 2014 Ettus Research
# Copyright (c) 2014 richards-tech
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# - Try to find qextserialport
# Once done this will define
#  LIBQEXTSERIAL_FOUND - System has QEXTSERIAL
#  LIBQEXTSERIAL_INCLUDE_DIRS - The QEXTSERIAL include directories
#  QEXTSERIAL_LIBRARIES - The libraries needed to use QEXTSERIAL
#  QEXTSERIAL_DEFINITIONS - Compiler switches required for using QEXTSERIAL

find_path(QEXTSERIAL_INCLUDE_DIR qextserialport.h HINTS /usr/include/QtExtSerialPort)
find_library(QEXTSERIAL_LIBRARY NAMES qextserialport qextserialport-1.2)

set(QEXTSERIAL_LIBRARIES ${QEXTSERIAL_LIBRARY})
set(QEXTSERIAL_INCLUDE_DIRS ${QEXTSERIAL_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set QEXTSERIAL_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(QExtSerial  DEFAULT_MSG
    QEXTSERIAL_LIBRARY QEXTSERIAL_INCLUDE_DIRS)

mark_as_advanced(QEXTSERIAL_INCLUDE_DIR QEXTSERIAL_LIBRARY)
