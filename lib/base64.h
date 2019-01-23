#ifndef __BASE64__
#define __BASE64__

char *decode_base64(const char *src);
char *encode_base64(int size, char *src);

#endif
