# MobiusOS

MobiusOS is an experimental mobile operating system being built from
scratch.

The goal is to understand how a mobile operating system works starting
from the lowest level:

Power On
    ↓
Bootloader
    ↓
Kernel
    ↓
CPU initialization
    ↓
Memory management
    ↓
Hardware drivers
    ↓
Display
    ↓
Touchscreen
    ↓
Storage
    ↓
User interface

## Current Goal

The first milestone is extremely simple:

> Boot an ARM64 machine and print "Hello World".

We will initially use QEMU instead of a physical phone.

This allows us to develop and debug MobiusOS safely before attempting
to run it on real mobile hardware.

## Project Structure

- `boot/` - Boot and early startup code
- `kernel/` - MobiusOS kernel
- `scripts/` - Linker scripts and build scripts
- `docs/` - Project documentation
- `Makefile` - Build commands

## Development Roadmap

### Phase 1 - First Boot
- [ ] Set up ARM64 cross compiler
- [ ] Create boot code
- [ ] Create kernel entry point
- [ ] Create linker script
- [ ] Build kernel
- [ ] Boot with QEMU
- [ ] Print "Hello World"

### Phase 2 - Kernel Basics
- [ ] CPU initialization
- [ ] Exception handling
- [ ] Interrupt handling
- [ ] UART driver
- [ ] Memory management

### Phase 3 - Hardware
- [ ] Display driver
- [ ] Storage driver
- [ ] USB
- [ ] Touchscreen
- [ ] Audio
- [ ] Networking

### Phase 4 - Mobile OS
- [ ] Process management
- [ ] Filesystem
- [ ] System calls
- [ ] Security model
- [ ] Graphics system
- [ ] Window manager
- [ ] Applications

### Phase 5 - Real Hardware
- [ ] Select ARM64 development hardware
- [ ] Boot MobiusOS on real hardware
- [ ] Initialize display
- [ ] Initialize touchscreen
- [ ] Continue toward smartphone hardware

## Philosophy

MobiusOS is being developed from the bottom up.

We want to understand what each layer does rather than starting with
an existing operating system kernel.

## First Milestone

When Phase 1 is complete, running MobiusOS should result in:

Hello World
