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
