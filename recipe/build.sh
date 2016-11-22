#!/bin/bash

OPTS=""
if [[ $(uname) == Darwin ]]; then
  OPTS="--disable-openmp"
fi

./configure --prefix=$PREFIX $OPTS

make
make check
make install
