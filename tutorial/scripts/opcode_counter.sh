#!/bin/zsh

# OpcodeCounter is an Analysis pass that prints a summary of the 
# LLVM IR opcodes encountered in every function in the input module.

export LLVM_DIR=/Users/michaelbeebe/llvm/build
export LLVM_TUTOR_SRC=/Users/michaelbeebe/Documents/llvm/llvm-tutor

export INPUT_FILES=$LLVM_TUTOR_SRC/tutorial/input_files

# Generate an LLVM file to analyze
$LLVM_DIR/bin/clang -emit-llvm -c \
$LLVM_TUTOR_SRC/inputs/input_for_cc.c -o $INPUT_FILES/input_for_cc.bc

# Run the pass through opt
$LLVM_DIR/bin/opt -load-pass-plugin $LLVM_TUTOR_SRC/build/lib/libOpcodeCounter.dylib \
-passes="print<opcode-counter>" -disable-output $INPUT_FILES/input_for_cc.bc