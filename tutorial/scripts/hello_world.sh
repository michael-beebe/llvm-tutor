#!/bin/zsh

export LLVM_DIR=/Users/michaelbeebe/llvm/build
export LLVM_TUTOR_SRC=/Users/michaelbeebe/Documents/llvm/llvm-tutor

export INPUT_FILES=$LLVM_TUTOR_SRC/tutorial/input_files

# prepare input IR file
$LLVM_DIR/bin/clang -O1 -S -emit-llvm \
$LLVM_TUTOR_SRC/inputs/input_for_hello.c \
-o $INPUT_FILES/input_for_hello.ll

# Run the pass
$LLVM_DIR/bin/opt -load-pass-plugin \
$LLVM_TUTOR_SRC/build/lib/libHelloWorld.dylib \
-passes=hello-world -disable-output $INPUT_FILES/input_for_hello.ll

