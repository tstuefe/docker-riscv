FROM adoptopenjdk/centos6_build_image

ENV OPENJDK_ROOT="/shared/projects/openjdk"
ENV OPENJDK_SOURCE_ROOT="/shared/projects/openjdk/jdk-jdk/source"

ENV RISCV64="/opt/riscv_toolchain_linux"
ENV LD_LIBRARY_PATH="${RISCV64}/lib64:/usr/local/gcc/lib64:/usr/local/gcc/lib"
ENV PATH="${RISCV64}/bin:${PATH}"
ENV CC="${RISCV64}/bin/riscv64-unknown-linux-gnu-gcc"
ENV CXX="${RISCV64}/bin/riscv64-unknown-linux-gnu-g++"

ADD build-riscv.sh .



