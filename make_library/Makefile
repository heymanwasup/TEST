PROGNAME      = exe_by_stat
SRCDIR		  = $(PWD)/src
INCDIR        = $(PWD)/src
LIBDIR		  = $(PWD)/lib
rwildcard	  = $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))
SRCS 		  := $(call rwildcard,$(SRCDIR)/,*.cxx)
	
INCLUDES	  = $(call rwildcard,$(INCDIR)/,*.h)

OBJS		  = $(patsubst %.cxx, %.o, $(SRCS))
CFLAGS        = -I$(INCDIR) 
LIBS          = -L$(LIBDIR) -ltest
$(PROGNAME):    $(OBJS)
	echo $(SRCS)
	g++ -o $@ $(OBJS) $(LDFLAGS) $(LIBS)
	echo $(OBJS)
%.o : %.cxx $(INCLUDES)
	g++ ${CFLAGS} -c  -g -o $@ $<
clean:	
	-rm -f ${PROGNAME} ${OBJS}
