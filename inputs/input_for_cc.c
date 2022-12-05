//=============================================================================
// FILE:
//      input_for_cc.c
//
// DESCRIPTION:
//      Sample input file for CallCounter analysis.
//
// License: MIT
//=============================================================================
void foo() { }
void bar() {foo(); }
void fez() {bar(); }
void TEST() { }

int main() {
  foo();
  bar();
  fez();

  TEST();
  TEST();

  int ii = 0;
  for (ii = 0; ii < 10; ii++)
    foo();

  return 0;
}
