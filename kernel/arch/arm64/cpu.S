.section .text
.global cpu_get_current_el

cpu_get_current_el:
    mrs x0, CurrentEL
    ret
