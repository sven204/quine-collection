#include <stdio.h>

char *program[] = {"#include <stdio.h>",
"",
"char *program[] = {",
"NULL};",
"",
"int main() {".
"    unsigned int i;",
"    puts(program[0]);",
"    puts(program[1]);",
"    fputs(program[2], stdout);",
"    for (i = 0; program[i]; ++i) {",
"        putchar(34);",
"        fputs(program[i], stdout);",
"        putchar(34);",
"        putchar(44);",
"        putchar(10);",
"    }",
"    for (i = 3; program[i]; ++i)",
"        puts(program[i]);",
"    return 0;",
"}",
NULL};

int main() {
    unsigned int i;
    puts(program[0]);
    puts(program[1]);
    fputs(program[2], stdout);
    for (i = 0; program[i]; ++i) {
        putchar(34);
        fputs(program[i], stdout);
        putchar(34);
        putchar(44);
        putchar(10);
    }
    for (i = 3; program[i]; ++i)
        puts(program[i]);
    return 0;
}
