# Single Author info:
# skukret Sarthak Kukreti
# Group info:
# djzager David Joshua Zager
# skukret Sarthak Kukreti
# vsharma5 Vipin Sharma
SRC=.
CC=gcc
#CFLAGS= -O3 -I$(INC) -I$(SRC)
CFLAGS= -g -I$(INC) -I$(SRC)
BUILD=.

DEPS = $(wildcard $(SRC)/*.c)
OBJECTS = $(patsubst $(SRC)/%.c, $(BUILD)/%.o, $(DEPS))

default: all

clean:
	rm -f p4.o p4

$(BUILD)/%.o: $(SRC)/%.c
	$(CC) -c -o $@ $< $(CFLAGS)

all: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o p4

a4: default