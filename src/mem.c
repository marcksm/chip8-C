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

byte write(word address, byte value) {
   memory[address.WORD] = value;
}

int main() {
  if (!init(400)) {
     printf ("Fatal error: Unable to allocate emulator memory\n");
     exit (1);
  }
  word i;
  i.BYTE.low = 0;
  i.BYTE.high = 0;
  write(i,31);
  printf ("-->%d", read(0));
  return 0;
}
