#include "example.h"
#include<stdio.h>

void call_a_python_func(int (*func)(int), int i) {
  printf("I'm C code! I got the argument %d\n", i);
  int j = func(2.0);
  printf("I called the Cython wrapped Python function with argument 2.0 and got back %d\n", j);
}
