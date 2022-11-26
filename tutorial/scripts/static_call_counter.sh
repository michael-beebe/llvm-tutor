#!/bin/zsh

# The StaticCallCounter pass counts the number of static function 
# calls in the input LLVM module. Static refers to the fact that 
# these function calls are compile-time calls (i.e. visible during 
# the compilation). This is in contrast to dynamic function calls, 
# i.e. function calls encountered at run-time (when the compiled 
# module is run). The distinction becomes apparent when analysing 
# functions calls within loops, e.g.:

export LLVM_DIR=/Users/michaelbeebe/llvm/build
export LLVM_TUTOR_SRC=/Users/michaelbeebe/Documents/llvm/llvm-tutor

export INPUT_FILES=$LLVM_TUTOR_SRC/tutorial/input_files