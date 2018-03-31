#!/bin/sh
# @see https://stackoverflow.com/questions/40307876/llvm-header-not-found-after-apt-get-install

clang++-6.0 -g -O3 toy.cpp `llvm-config --cxxflags --ldflags --system-libs --libs all` -o toy