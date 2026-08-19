ENTRY(_start)

SECTIONS
{
    . = 0x40000000;

    .text : ALIGN(8)
    {
        KEEP(*(.text.boot))
        *(.text*)
    }

    .rodata : ALIGN(8)
    {
        *(.rodata*)
    }

    .data : ALIGN(8)
    {
        *(.data*)
    }

    .bss : ALIGN(8)
    {
        *(.bss*)
        *(COMMON)
    }

    . = ALIGN(16);

    /*
     * Kernel stack.
     * Stack grows downward on ARM64.
     */
    . += 0x10000;

    __stack_top = .;

    __end = .;
}
