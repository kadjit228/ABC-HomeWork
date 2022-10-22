#include <stdio.h>
int* input_mass(int n) {
    int b[n];
    for (int i = 0; i < n; ++i) {
       scanf("%d", &b[i]);
    }
    int* p = b;
    return p;
}

int* form_mass(int* a, int n) {
    int b[n];
    for (int i = 0; i < n; ++i) {
       b[i] = a[i] * a[i];
    }
    int* p = b;
    return p;
}

void output(int* b, int size) {
    for (int i = 0; i < size; ++i) {
        printf("%d ", b[i]);
    }
}

int main() {
    int n;
    scanf("%d", &n);
    int* a = input_mass(n);
    int* b = form_mass(a, n);
    output(b, n);
}