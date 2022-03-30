# Makefile for Lab9
#name: Ismail Al Abdali

EXEC = Lab9
OBJS = Lab9.o term.o SortingList.o autocomplete.o
CC = /usr/bin/g++
$(EXEC) : $(OBJS)
	$(CC) $(OBJS) -o $@
Lab9.o : Lab9.cpp
	$(CC) -c $^

autocomplete.o : autocomplete.cpp autocomplete.h
	$(CC) -c $<
SortingList.o : SortingList.cpp SortingList.h
	$(CC) -c $<
term.o : term.cpp term.h
	$(CC) -c $<
clean :
	rm -i *.o $(EXEC)
