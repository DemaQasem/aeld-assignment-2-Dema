#include <string.h>
#include <stdio.h>

FILE *file = fopen(argv[1], "w");
fprintf(file, "argv[2]");
