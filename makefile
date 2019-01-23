all: clean
	cc -o bin/base64 src/main.c lib/base64.c -I./lib/ -Wall -g

clean:
	-rm bin/*
