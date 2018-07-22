CC=gcc

OBJDIR = obj
OBJ = $(OBJDIR)/mem.o $(OBJDIR)/chip8.o
OBJMAIN = obj/chip8.o

MAIN = src/chip8.c
FILES = src/lib

DEPS = src/lib/*.h

TARGET = chip8

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

$(OBJDIR)/%.o: $(FILES)/%.c $(DEPS)
	if [ ! -d '$(OBJDIR)' ]; then mkdir $(OBJDIR); fi
	$(CC) -c -o $@ $<

$(OBJMAIN): $(MAIN) $(DEPS)
	if [ ! -d '$(OBJDIR)' ]; then mkdir $(OBJDIR); fi
	$(CC) -c -o $@ $<

clean:
	if [ -d '$(OBJDIR)' ]; then rm $(OBJDIR) -rf; fi
	if [ -f '$(TARGET)' ]; then rm $(TARGET) -rf; fi
