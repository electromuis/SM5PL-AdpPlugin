set(PLUGIN_NAME "AdpPlugin")
REGISTER_PLUGIN(${CMAKE_CURRENT_SOURCE_DIR} ${PLUGIN_NAME})

include(lib/adp.cmake)
target_link_libraries(${PLUGIN_NAME} adp)
