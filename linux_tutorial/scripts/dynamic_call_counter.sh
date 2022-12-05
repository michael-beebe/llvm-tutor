#!/bin/bash

# The DynamicCallCounter pass counts the number of run-time 
# (i.e. encountered during the execution) function calls. It 
# does so by inserting call-counting instructions that are 
# executed every time a function is called. Only calls to 
# functions that are defined in the input module are counted. 
# This pass builds on top of ideas presented in InjectFuncCall. 
# You may want to experiment with that example first.

export LLVM_TUTOR_SRC=/home/mibeebe/llvm/llvm-tutor
export INPUT_FILES=$LLVM_TUTOR_SRC/linux_tutorial/input_files
export TUTORIAL_BIN=$LLVM_TUTOR_SRC/linux_tutorial/bin

# Generate the LLVM file to analyze
$LLVM_DIR/bin/clang -emit-llvm -c $LLVM_TUTOR_SRC/inputs/input_for_cc.c \
-o $INPUT_FILES/input_for_cc.bc

# Instrument the input file
$LLVM_DIR/bin/opt -load-pass-plugin=$LLVM_TUTOR_SRC/build/lib/libDynamicCallCounter.so \
-passes="dynamic-cc" $INPUT_FILES/input_for_cc.bc -o $TUTORIAL_BIN/instrumented_bin

# This generates instrumented.bin, which is the instrumented version 
# of input_for_cc.bc. In order to verify that DynamicCallCounter worked 
# as expected, you can either check the output file (and verify that it 
# contains new call-counting instructions) or run it:

$LLVM_DIR/bin/lli $TUTORIAL_BIN/instrumented_bin
