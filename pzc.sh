#!/bin/bash

sh pzcheck.sh $1

PZC=`realpath $0`
BIN_DIR=`dirname $PZC`
INCLUDE_DIR=`realpath $BIN_DIR`

CXX=`which colorg++ 2> /dev/null` || CXX=g++
ALLOW="-Wno-dangling-else -Wno-sign-compare -Wno-writable-strings"
CXXFLAGS="-std=gnu++11 -Wall -Wextra -Werror $ALLOW -I $INCLUDE_DIR -include pazcal"

env CGCC_FORCE_COLOR=1 $CXX $CXXFLAGS tmp.cpp

rm tmp.cpp
mv a.out main
