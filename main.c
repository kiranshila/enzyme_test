#include <stdio.h>

extern double __enzyme_autodiff(void *, double);

double square(double x) { return x * x; }

double dsquare(double x) { return __enzyme_autodiff((void *)square, x); }

int main() {
  printf("f(x) = x^2\n");
  for (double i = 1; i < 5; i++) {
    printf("x=%f f(x)=%f f'(x)=%f\n", i, square(i), dsquare(i));
  }
}