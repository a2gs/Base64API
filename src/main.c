#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "base64.h"

int main(int argc, char **argv)
{
	char *s = NULL;
	char *d = NULL;

	if(argc < 2){
		printf("Usage:\n\t%s [string]\n",argv[0]);
		return(1);
	}

	s = encode_base64(strlen(argv[1]), argv[1]);
	printf("Base64 encoded: %s\n", s);

	d = decode_base64(s);
	printf("Base64 decode.: %s\n", d);

	free(s);
	free(d);

	return(0);
}
