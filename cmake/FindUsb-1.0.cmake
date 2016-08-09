find_path ( USB_1_INCLUDE_DIR NAMES libusb-1.0/libusb.h PATHS /opt/local/include /usr/local/include /usr/include )
find_library ( USB_1_LIBRARY NAMES libusb-1.0.so HINTS /opt/local/lib /usr/local/lib /usr/lib )
if ( USB_1_LIBRARY AND USB_1_INCLUDE_DIR )
  set ( FOUND_USB_1 TRUE )
else ()
  message ( WARNING " could not find libusb-1.0 (LIBRARY=${USB_1_LIBRARY}, INCLUDE=${USB_1_INCLUDE_DIR})" )
endif ()
mark_as_advanced ( USB_1_INCLUDE_DIR USB_1_LIBRARY )
