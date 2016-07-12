CC = g++

#CFLAGS = -g -c -Wall -pedantic -std=c++11 -DDEBUGMODE
CFLAGS = -O2 -c -Wall -pedantic -std=c++11

LFLAGS = -g
#LFLAGS = -O2

INC1 = .
INC2 = ../src
INC3 = /opt/local/include

INCS = -I$(INC1) -I$(INC2) -I$(INC3)

LIB1 = ../lib
LIB2 = /opt/local/lib

LIBS = -L$(LIB1) -L$(LIB2) -lm -lChannel2D -lglpk

OBJS = main.o

bc2d:	$(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o channel2d $(LIBS)
	mv channel2d ../bin/.

main.o:	$(INC2)/a3.hpp $(INC2)/tabulatedfunction.hpp \
	$(INC2)/exceptionobject.hpp $(INC3)/glpk.h \
	$(INC2)/curvebuilder.hpp $(INC1)/main.cpp
	$(CC) $(CFLAGS) $(INC1)/main.cpp $(INCS)

clean:
	rm -fr *.o *~

realclean:
	rm -fr *.o *~ ../bin/channel2d
