CC=gcc
DEPS = src/*.h
OBJ = mem.o

chip8: $(OBJ)
	$(CC) -o $@ objects/$^

%.o: ./src/%.c $(DEPS)
	mkdir objects
	$(CC) -c -o ./objects/$@ $<

clean:
	rm objects -rf
	rm chip8
