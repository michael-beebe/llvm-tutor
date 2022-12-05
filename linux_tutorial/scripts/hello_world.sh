#!/bin/bash

export LLVM_TUTOR_SRC=/home/mibeebe/llvm/llvm-tutor
export INPUT_FILES=$LLVM_TUTOR_SRC/linux_tutorial/input_files
export TUTORIAL_BIN=$LLVM_TUTOR_SRC/linux_tutorial/bin

# prepare input IR file
$LLVM_DIR/bin/clang -O1 -S -emit-llvm \
$LLVM_TUTOR_SRC/inputs/input_for_hello.c \
-o $INPUT_FILES/input_for_hello.ll

# Run the pass
$LLVM_DIR/bin/opt -load-pass-plugin \
$LLVM_TUTOR_SRC/build/lib/libHelloWorld.so \
-passes=hello-world -disable-output $INPUT_FILES/input_for_hello.ll

