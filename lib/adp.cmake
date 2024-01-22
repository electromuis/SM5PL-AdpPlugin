SET(ADP_DIR ${CMAKE_CURRENT_LIST_DIR}/analog-dance-pad/adp-tool)

SET(ADP_SOURCES
  ${ADP_DIR}/src/Model/Device.cpp
  ${ADP_DIR}/src/Model/Firmware.cpp
  ${ADP_DIR}/src/Model/Log.cpp
  ${ADP_DIR}/src/Model/Reporter.cpp
  ${ADP_DIR}/src/Model/Utils.cpp
)

add_subdirectory (${ADP_DIR}/lib/fmt)
include (${ADP_DIR}/lib/hidapi.cmake)

add_library(adp STATIC ${ADP_SOURCES})
target_include_directories(adp PUBLIC
  ${ADP_DIR}/src
  ${ADP_DIR}/lib/json/include
)
target_link_libraries(adp PUBLIC fmt::fmt hidapi)
