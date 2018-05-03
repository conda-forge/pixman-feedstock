#!/bin/bash

OPTS=""
if [[ $(uname) == Darwin ]]; then
  OPTS="--disable-openmp"
fi

export CFLAGS="-fPIC ${CFLAGS}"

./configure --prefix=$PREFIX $OPTS

make -j$CPU_COUNT
make check -j$CPU_COUNT
make install -j$CPU_COUNT
