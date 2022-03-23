all: prettify.c
	gcc -O3 -c prettify.c -fPIC `pkg-config --cflags geany`
	gcc -O3 prettify.o -o prettify.so -shared `pkg-config --libs geany`;
