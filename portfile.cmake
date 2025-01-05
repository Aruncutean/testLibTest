

#set(VCPKG_ROOT "C:/vcpkg")
#include("${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")

# Detalii despre pachetul de pe GitHub
set(MYLIBRARY_VERSION "1.0.0")
set(MYLIBRARY_REPO "Aruncutean/testLibTest")
set(MYLIBRARY_REF "v1.0.2")  # Poți folosi un tag sau branch
set(MYLIBRARY_SHA512 "0473839788890128B2F72DB1EF1B12C70C616EC259D9B37690D08BFEF66A2676308A608C5CEBCD653190ADEF3ABB93FD97E7934B4C40496FCF08BC5C907FD88F")

vcpkg_from_github(
        OUT_SOURCE_PATH ${SOURCE_PATH}
        REPO ${MYLIBRARY_REPO}
        REF ${MYLIBRARY_REF}
        SHA512 ${MYLIBRARY_SHA512}
)

vcpkg_cmake_configure(
        SOURCE_PATH ${SOURCE_PATH}
)
