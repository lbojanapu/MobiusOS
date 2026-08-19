#include "uart.h"

void kernel_main(void)
{
    uart_init();

    uart_puts("Hello World\n");

    while (1)
    {
        __asm__ volatile("wfe");
    }
}
