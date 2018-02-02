#!/bin/bash
# script to build on mac

mkdir .vs
cd .vs

# clean up any old builds of xPlatAppx modules
find . -name *xPlatAppx* -d | xargs rm -r

cmake -DCMAKE_SYSTEM_NAME=Android \
    -DCMAKE_ANDROID_NDK=/users/rubengu/Library/Android/sdk/ndk-bundle \
    -DCMAKE_SYSTEM_VERSION=19 \
    -DCMAKE_ANDROID_ARCH_ABI=x86 \
    -DCMAKE_ANDROID_NDK_TOOLCHAIN_VERSION=clang \
    -DCMAKE_ANDROID_STL_TYPE=c++_shared \
    -DCMAKE_BUILD_TYPE=Debug -DAOSP=on ..
make
