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

int print_grid(TGrid *g){
    fprintf(stderr, "Grid at %p\n", g);
    fprintf(stderr, "    Id = %.13s\n", g->Id);
    fprintf(stderr, "    (NI,NJ,NK) = (%d,%d,%d)\n", g->NI, g->NJ, g->NK);
    fprintf(stderr, "    (HI,HJ) = (%d,%d)\n", g->HI, g->HJ);
    fprintf(stderr, "    NbTiles = %d\n", g->NbTiles);
    return 0;
}

