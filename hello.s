//
// hello world
//

.global _main
.align 2

// main
_main:
    b _print
    b _terminate

_print:
    mov X0, #1
    adr X1, helloworld
    mov X2, #12
    mov X16, #4
    svc 0

_terminate:
    mov X0, #0
    mov X16, #1
    svc 0

helloworld: .ascii "Hello world\n"