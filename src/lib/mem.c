#include "mem.h"
#include <stdio.h>
#include <stdlib.h>

byte init(int memorySize) {
   memory = (byte *)malloc(sizeof (byte) * memorySize);
   return memory != NULL;
}

byte read(int address) {
   return memory[address];
}

void write(word address, byte value) {
   memory[address.WORD] = value;
}
