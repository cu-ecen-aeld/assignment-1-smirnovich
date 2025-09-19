#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
int main(int argc, char* argv[]){
    if (argc < 3){
   //     fprintf(stderr, "values less, %d\r\n", argc);
        exit(1);// EXIT_FAILURE;
    }
    FILE *fptr;

    fptr = fopen(argv[1], "w");
 /*   if (fptr == NULL) {
        printf("%d\n", errno);
    }*/
    fputs(argv[2],fptr);
    fclose(fptr);
    return EXIT_SUCCESS;
}