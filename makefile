CC=cc
CFLAGS=-O3 -Minline=levels:5

all: cpu acc

cpu:
	$(CC) $(CFLAGS) geometry.c fileio.c fluid.c -o sph.out

acc:
	$(CC) $(CFLAGS) -acc -Minfo=acc geometry.c fileio.c fluid.c -o sph-acc.out

clean:
	rm -rf *.o *.out 
