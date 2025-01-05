set(VCPKG_ROOT "C:/vcpkg")

include(${VCPKG_ROOT}/scripts/cmake/vcpkg.cmake)

set(MYLIBRARY_VERSION "1.0.0")
set(MYLIBRARY_URL "https://github.com/Aruncutean/testLibTest/releases/download/v1.0.1/testLib.zip")
set(MYLIBRARY_SHA512 "02A46E8715CFA2460597B32BF948706B7CDCAFC2A925DF53C57AAEF6217D88AA1085D376F6F70AC5FF746135ABF95262ADAC3B7B39027480C4688CDC079133DD")
set(DOWNLOAD_PATH ${DOWNLOADS}/testlib-${MYLIBRARY_VERSION}.zip)
# Download the archive
vcpkg_download_distfile(
        OUT_SOURCE_PATH ${SOURCE_PATH}
        URLS  ${MYLIBRARY_URL}
        FILENAME "testlib-${MYLIBRARY_VERSION}.zip"
        SHA512 ${MYLIBRARY_SHA512}
)

# Extract the archive
vcpkg_extract_source_archive(
        OUT_SOURCE_PATH ${SOURCE_PATH}
        ARCHIVE ${DOWNLOAD_PATH}
)

# Configure the project
vcpkg_cmake_configure(
        SOURCE_PATH ${SOURCE_PATH}
        PREFER_NINJA
)

# Build the project
vcpkg_cmake_build()

# Install the project
vcpkg_cmake_install()