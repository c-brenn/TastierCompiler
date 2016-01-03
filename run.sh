#!/bin/bash
if make; then
  pushd ../machine
  if cabal install; then
    popd
    mono bin/tcc.exe test/Programs/$1.tas test.asm
    if [ -e test.asm ]; then
      if tasm test.asm test.bc; then
        tvm test.bc test/Inputs/test.IN
      fi
    fi
  else
    popd
  fi
fi
