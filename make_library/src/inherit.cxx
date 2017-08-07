#include "inherit.h"

Nested::Nested(){
  cout <<"building Nested"<<endl;
}

void Nested::Print(){
  cout <<"in Nested::Print()"<<endl;
  test.Print();
}

