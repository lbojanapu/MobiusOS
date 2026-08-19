CROSS_COMPILE = aarch64-linux-gnu-

CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)ld

CFLAGS = -Wall -Wextra \
         -ffreestanding \
         -nostdlib \
         -nostartfiles \
         -ffunction-sections \
         -fdata-sections

LDFLAGS = -T scripts/linker.ld

KERNEL = mobius.elf

OBJS = \
    boot.o \
    kernel.o \
    uart.o

.PHONY: all clean run

all: $(KERNEL)

boot.o: boot/boot.S
	$(CC) $(CFLAGS) -c $< -o $@

kernel.o: kernel/kernel.c
	$(CC) $(CFLAGS) -c $< -o $@

uart.o: kernel/uart.c
	$(CC) $(CFLAGS) -c $< -o $@

$(KERNEL): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

run: $(KERNEL)
	qemu-system-aarch64 \
		-M virt \
		-cpu cortex-a53 \
		-nographic \
		-kernel $(KERNEL)

clean:
	rm -f $(OBJS) $(KERNEL)
