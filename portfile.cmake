set(MYLIBRARY_VERSION "1.0.0")
set(MYLIBRARY_GITHUB_REPO "user/mylibrary")

vcpkg_from_github(
        OUT_SOURCE_PATH ${SOURCE_PATH}
        REPO ${MYLIBRARY_GITHUB_REPO}
        REF v1.0.0
        SHA512 <hash_sha512>
)

vcpkg_cmake_configure()
vcpkg_cmake_build()

vcpkg_cmake_install()

file(INSTALL
        DESTINATION ${CURRENT_PACKAGES_DIR}/lib
        FILES ${SOURCE_PATH}/src/mylibrary.cpp
)