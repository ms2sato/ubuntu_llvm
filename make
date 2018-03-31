#!/bin/sh
# @see https://stackoverflow.com/questions/40307876/llvm-header-not-found-after-apt-get-install

clang++ -g -O3 toy.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o toy