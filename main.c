#include "stdio.h"

extern void Reverser(int *dest, const int *src, int n);

int main()
{
  int src[4] = {1,2,3,4};
  int dest[4] = {0};
  Reverser(dest, src, 4);
  printf("Before: %d %d %d %d\n"
         "After: %d %d %d %d\n",
         src[0], src[1], src[2], src[3],
         dest[0], dest[1], dest[2], dest[3]);
}
