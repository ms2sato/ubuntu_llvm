FROM ubuntu:18.04
RUN apt-get update \
  && apt-get install -y wget libz-dev software-properties-common \
  && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|apt-key add - \
  && apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main" \
  && apt-get update \
  && apt-get install -y --allow-unauthenticated clang-6.0 \
  && ln -s /usr/bin/llvm-config-6.0 /usr/bin/llvm-config
