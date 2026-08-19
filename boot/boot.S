.section .text.boot
.global _start

_start:
    // Set up the stack before entering C code.
    ldr x0, =__stack_top
    mov sp, x0

    // Enter the MobiusOS kernel.
    bl kernel_main

hang:
    wfe
    b hang
