CC = gcc
CFLAGS = -g -Wall -std=c11 -D_XOPEN_SOURCE=700

RM = rm -rf

all: clean
	$(CC) -o bin/base64 src/main.c lib/base64.c -I./lib/ $(CFLAGS)

clean:
	-$(RM) bin/*
