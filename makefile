#CC=clang++
CC=gcc
CFLAGS=-c -Wall -pedantic -std=c89 
LDFLAGS=
SOURCES=cclassnovsky.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=cclassnovsky.out

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	rm ./*.o

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

