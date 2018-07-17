all: mem.o
	gcc -o chip8 objects/mem.o

mem.o: src/mem.c src/mem.h src/global.h
	mkdir objects
	gcc -c src/mem.c -o ./objects/$@

clean:
	rm objects -rf
	rm chip8
