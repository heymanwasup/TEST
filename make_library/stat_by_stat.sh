#make archieved library
#g++ -c ./src/test.cxx -o ./obj/test.o
#ar rcs ./lib/libtest.a ./obj/test.o


#g++  ./src/inherit.cxx -L./lib -ltest -o ./obj/inherit.o

#ar rcs ./lib/libinherit.a ./obj/test.o ./obj/inherit.o

#make executable
source statically.sh
make
ar rcs ./lib/libnested.a  ./src/*.o
g++ -static ./src/main2.cxx -L./lib -lnested -o stat_by_stat.exe

