#make library

g++ -c -fPIC ./src/test.cxx -o ./obj/test_shared.o
g++ -shared  -o ./lib/libtest_shared.so  ./obj/test_shared.o

#link library and make exe

g++ ./src/main.C -o ./bin/dynamically_linked -L./lib -ltest_shared

