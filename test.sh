#!/bin/bash
if make; then
  mono bin/tcc.exe test/Programs/additions/$1.tas test.asm
  if [ -e test.asm ]; then
    if tasm test.asm test.bc; then
      tvm test.bc test/Inputs/test.IN
      rm -f test.asm test.bc
    fi
  fi
fi
