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
    mov X0, #1          // stdout
    adr X1, helloworld  // address of hello world
    mov X2, #12         // length of hello world
    mov X16, #4         // write to stdout
    svc 0               // syscall

_terminate:
    mov X0, #0          // return 0
    mov X16, #1         // terminate
    svc 0               // syscall

helloworld: .ascii "Hello world\n"