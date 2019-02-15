CC = gcc
CFLAGS = -g -Wall -std=c11 -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -D_POSIX_SOURCE=1 -D_DEFAULT_SOURCE=1 -D_GNU_SOURCE=1

RM = rm -rf

all: clean
	$(CC) -o bin/base64 src/main.c lib/base64.c -I./lib/ $(CFLAGS)

clean:
	-$(RM) bin/*
