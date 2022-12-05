#!/bin/bash

# This pass is a HelloWorld example for code instrumentation.
# For every function defined in the input module

export LLVM_TUTOR_SRC=/home/mibeebe/llvm/llvm-tutor
export INPUT_FILES=$LLVM_TUTOR_SRC/linux_tutorial/input_files
export TUTORIAL_BIN=$LLVM_TUTOR_SRC/linux_tutorial/bin

# Generate LLVM file to analyze
$LLVM_DIR/bin/clang -O0 -emit-llvm -c \
$LLVM_TUTOR_SRC/inputs/input_for_hello.c -o \
$INPUT_FILES/input_for_hello.bc

# Run the pass through opt - New PM
$LLVM_DIR/bin/opt -load-pass-plugin \
$LLVM_TUTOR_SRC/build/lib/libInjectFuncCall.so \
--passes="inject-func-call" $INPUT_FILES/input_for_hello.bc -o \
$TUTORIAL_BIN/instrumented_hello_world.bin

$LLVM_DIR/bin/lli $TUTORIAL_BIN/instrumented_hello_world.bin
