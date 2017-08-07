#make archieved library
g++ -c ./src/test.cxx -o ./obj/test.o
ar rcs ./lib/libtest.a ./obj/test.o

#make executable
g++ -static ./src/main.C -L./lib -ltest -o ./bin/statically_linked

