#!/bin/bash

cat $1 | sed -E 's/^[[:blank:]]*PROGRAM[[:blank:]]+[A-Za-z0-9_]+[[:blank:]]*\([[:blank:]]*\)/PROGRAM __pazcal__program ()/' > tmp.cpp