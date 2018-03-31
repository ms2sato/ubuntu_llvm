FROM ubuntu:16.04
RUN apt-get update \
  && apt-get install -y wget clang libz-dev \
  && ln -s /usr/bin/llvm-config-3.8 /usr/bin/llvm-config
