all: process 

main_process.o: main_process.c
	gcc -O3 -c main_process.c 

png_util.o: png_util.c
	gcc -O3 -l lpng -c png_util.c

process: main_process.o png_util.o
	gcc -O3 -o process -lm -l png main_process.o png_util.o

test: process 
	./process ./images/cube.png test.png

clean:
	rm *.o
	rm process 
