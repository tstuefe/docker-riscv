#! /bin/bash
set -e
if [ ! -d ${OPENJDK_ROOT} ]; then
  echo "missing openjdk root mount (${OPENJDK_ROOT})";
  exit;
fi

cd ${OPENJDK_ROOT}
cd jdk-jdk
if [ ! -d output-fastdebug-riscv ]; then
  mkdir output-fastdebug-riscv;
fi

cd output-fastdebug-riscv
bash ../source/configure                                   \
    --openjdk-target=riscv64-unknown-linux-gnu             \
    --with-sysroot=/opt/fedora28_riscv_root                \
    --with-boot-jdk=${OPENJDK_ROOT}/jdks/sapmachine18      \
    --with-gtest=${OPENJDK_ROOT}/gtest/googletest          \
    --disable-precompiled-headers                          \
    BUILD_CC=/usr/local/gcc/bin/gcc-7.5                    \
    BUILD_CXX=/usr/local/gcc/bin/g++-7.5

make images

