#!/bin/bash

OPTS=""
if [[ $(uname) == Darwin ]]; then
  OPTS="--disable-openmp"
fi

./configure --prefix=$PREFIX $OPTS

make -j$CPU_COUNT
make check -j$CPU_COUNT
make install -j$CPU_COUNT
