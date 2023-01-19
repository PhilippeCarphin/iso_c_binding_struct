#include "grid.h"
#include <stdio.h>
#include <stdlib.h>

int print_tile(TTile *t){
    fprintf(stderr, "Tile at %p\n", t);
    fprintf(stderr, "    (I0,J0) = (%d,%d)\n", t->I0, t->J0);
    fprintf(stderr, "    (I1,J1) = (%d,%d)\n", t->I1, t->J1);
    fprintf(stderr, "    (HI,HJ) = (%d,%d)\n", t->HI, t->HJ);
    return 0;
}

