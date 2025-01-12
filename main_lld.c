#include "mylib.h"
#include <stdio.h>

extern double __enzyme_autodiff(void *, double);

double df(double x) { return __enzyme_autodiff((void *)f, x); }

int main() {
  for (double i = 1; i < 5; i++) {
    printf("%f %f\n", f(i), df(i));
  }
}