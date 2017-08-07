#ifndef __inherit_h__
#define __inherit_h__

#include "test.h"

class Nested
{
  public:
    Nested();
  
    Test test;
    void Print();
};

#endif
