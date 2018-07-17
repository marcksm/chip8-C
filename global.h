#ifndef GLOBAL_H_
#define GLOBAL_H_

typedef unsigned char byte; // defining a byte

typedef union { // defining a word
   unsigned short int WORD;
   struct {
         byte low, high;
   } BYTE;
} word;


#endif
