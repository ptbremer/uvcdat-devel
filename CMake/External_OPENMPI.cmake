
set(OPENMPI_source "${CMAKE_CURRENT_BINARY_DIR}/build/OPENMPI")
set(OPENMPI_install "${cdat_EXTERNALS}")

ExternalProject_Add(OPENMPI
  DOWNLOAD_DIR ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${OPENMPI_source}
  INSTALL_DIR ${OPENMPI_install}
  URL ${OPENMPI_URL}/${OPENMPI_GZ}
  URL_MD5 ${OPENMPI_MD5}
  BUILD_IN_SOURCE 1
  PATCH_COMMAND ""
  CONFIGURE_COMMAND ${CMAKE_COMMAND} -DINSTALL_DIR=<INSTALL_DIR> -DWORKING_DIR=<SOURCE_DIR> -P ${cdat_CMAKE_BINARY_DIR}/cdat_configure_step.cmake
  DEPENDS ${CURL_DEPENDENCIES}
  ${EP_LOG_OPTIONS}
)