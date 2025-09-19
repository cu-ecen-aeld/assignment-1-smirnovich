#include <stdio.h>
#include <stdlib.h>
int main(int argc, char* argv[]){
    if (argc < 3){
        fprintf(stderr, "values less, %d\r\n", argc);
        return EXIT_FAILURE;
    }
    FILE *fptr;

    fptr = fopen(argv[1], "w");
    fputs(argv[2],fptr);
    fclose(fptr);
    return EXIT_SUCCESS;
}