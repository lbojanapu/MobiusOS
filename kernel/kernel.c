#include "uart.h"
#include "arch/arm64/cpu.h"

void kernel_main(void)
{
    uart_init();

    uart_puts("\nMobiusOS v0.2\n");
    uart_puts("Hello World\n");

    unsigned long current_el = cpu_get_current_el();

    uart_puts("CPU initialized\n");
    uart_puts("CurrentEL register read successfully\n");

    (void)current_el;

    while (1)
    {
        __asm__ volatile("wfe");
    }
}
