#include "uart.h"

#define UART0_BASE 0x09000000UL

#define UARTDR (*(volatile unsigned int *)(UART0_BASE + 0x00))
#define UARTFR (*(volatile unsigned int *)(UART0_BASE + 0x18))

#define UARTFR_TXFF (1 << 5)

void uart_init(void)
{
    // QEMU's virt machine provides a PL011 UART.
}

void uart_putc(char c)
{
    while (UARTFR & UARTFR_TXFF)
        ;

    UARTDR = c;
}

void uart_puts(const char *str)
{
    while (*str)
    {
        if (*str == '\n')
            uart_putc('\r');

        uart_putc(*str++);
    }
}
