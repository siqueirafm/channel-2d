CC = g++
AR = ar

#CFLAGS = -g -c -std=c++11 -Wall -pedantic
CFLAGS = -O2 -c -std=c++11 -Wall -pedantic

INC1 = .
INC2 = /opt/local/include

INCS = -I$(INC1) -I$(INC2)

OBJ = curvebuilder.o

LIB = libChannel2D.a

curvebuilder.o: $(INC1)/a3.hpp $(INC1)/tabulatedfunction.hpp \
		$(INC1)/bound.hpp $(INC1)/coefficient.hpp \
		$(INC1)/exceptionobject.hpp $(INC2)/glpk.h \
		$(INC1)/curvebuilder.hpp $(INC1)/curvebuilder.cpp
	$(CC) $(CFLAGS) $(INC1)/curvebuilder.cpp $(INCS)

all: $(OBJ)

lib: 	$(INC1)/a3.hpp $(INC1)/tabulatedfunction.hpp \
	$(INC1)/bound.hpp $(INC1)/coefficient.hpp \
	$(INC1)/exceptionobject.hpp $(INC2)/glpk.h \
	$(INC1)/curvebuilder.hpp $(INC1)/curvebuilder.cpp
	$(AR) rc $(LIB) $(OBJ)
	ranlib $(LIB)
	mv $(LIB) ../lib

clean:
	rm -f *.o *~

realclean:
	rm -f *.o *~ ../lib/libChannel2D.a
