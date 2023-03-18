// the  concept of overriding is not a built-in function in C as C is not an object-oriented programming language. However a similar functionality can be achieved using function pointers and structures#include <stdio.h>

typedef struct {
    void (*print)(void);
} Base;

void Base_print() {
    printf("Base\n");
}

typedef struct {
    Base base;
    void (*print)(void);
} Derived;

void Derived_print() {
    printf("Derived\n");
}

int main() {
    Base base;
    base.print = Base_print;
    base.print();

    Derived derived;
    derived.base.print = Base_print;
    derived.print = Derived_print;
    derived.print();
    derived.base.print();

    return 0;
}

/*output
Base
Derived
Base*/