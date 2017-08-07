#include <iostream>
#include "inherit.h"

using namespace std;

int main()
{
  Test test;
  test.Print();

  Nested nested;
  nested.Print();

  return 0;
}
