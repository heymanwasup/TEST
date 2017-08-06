#make archieved library
g++ -c ./src/test.cxx -o test.o
ar rcs libtest.a test.o

#make executable
g++ -static ./src/main.cxx -L. -ltest -o statically_linked

rm *.a *.o 
