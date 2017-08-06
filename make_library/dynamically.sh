#make library

g++ -c -fPIC ./src/test.cxx -o test_shared.o
g++ -shared -Wl -o libtest_shared.so  test_shared.o

#link library and make exe

g++ ./src/main.cxx -o dynamically_linked -L. -ltest_shared
rm *.o

