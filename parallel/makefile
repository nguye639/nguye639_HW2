all: process 

main_process.o: main_process.c
	gcc -O3 -fopenmp -c main_process.c 

png_util.o: png_util.c
	gcc -O3 -fopenmp -l lpng -c png_util.c

process: main_process.o png_util.o
	gcc -O3 -fopenmp -o process -lm -l png main_process.o png_util.o

test: process 
	./process ./images/cube.png test.png

clean:
	rm *.o
	rm process 
