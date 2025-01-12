#include <stdio.h>

extern double __enzyme_autodiff(void *, double);

double f(double x) { return 12.0 + 31.4 * x + 11.2 * x * x; }

double df(double x) { return __enzyme_autodiff((void *)f, x); }

int main() {
  for (double i = 1; i < 5; i++) {
    printf("%f %f\n", f(i), df(i));
  }
}
