# these are cache variables, so they could be overwritten with -D,
set(CPACK_PACKAGE_NAME ${PROJECT_NAME}
    CACHE STRING "The resulting package name"
)
# which is useful in case of packing only selected components instead of the whole thing
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Simple Print Msg"
    CACHE STRING "Package description for the package metadata"
)
set(CPACK_PACKAGE_VENDOR "xxxx")

set(CPACK_VERBATIM_VARIABLES YES)
set(CPACK_PACKAGE_INSTALL_DIRECTORY ${CPACK_PACKAGE_NAME})
SET(CPACK_OUTPUT_FILE_PREFIX "${CMAKE_SOURCE_DIR}/_packages")


# Set dependencies if needed
# set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.14)")
# set(CPACK_RPM_PACKAGE_REQUIRES "libstdc++ >= 6.0")


set(CPACK_PACKAGING_INSTALL_PREFIX "/opt/test")#/${CMAKE_PROJECT_VERSION}")

set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})

set(CPACK_PACKAGE_CONTACT "xxx@gmail.com")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "xxxx")

# set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_RESOURCE_FILE_README "${CMAKE_CURRENT_SOURCE_DIR}/readme.md")

set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}")
set(CPACK_GENERATOR "ZIP;TGZ")
# Set generator-specific options if needed
set(CPACK_ZIP_COMPONENT_INSTALL ON)
set(CPACK_TGZ_COMPONENT_INSTALL ON)

# package name for deb. If set, then instead of some-application-0.9.2-Linux.deb
# you'll get some-application_0.9.2_amd64.deb (note the underscores too)
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)

# that is if you want every group to have its own package,
# although the same will happen if this is not set (so it defaults to ONE_PER_GROUP)
# and CPACK_DEB_COMPONENT_INSTALL is set to YES
set(CPACK_COMPONENTS_GROUPING ALL_COMPONENTS_IN_ONE)#ONE_PER_GROUP)
# without this you won't be able to pack only specified component
set(CPACK_DEB_COMPONENT_INSTALL YES)

include(CPack)

# ${namespace} could be your main project name, or company, or whatever
set(CPACK_PACKAGE_NAME "${namespace}-${PROJECT_NAME}"
    CACHE STRING "The resulting package name"
)

# where to find our CMake modules
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")


message(STATUS "Components to pack: ${CPACK_COMPONENTS_ALL}")






