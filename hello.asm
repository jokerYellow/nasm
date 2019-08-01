global _main
 
section .text

_main:
    mov     rax, 0x2000004 ; write
    mov     rdi, 1 ; stdout
    mov     rsi, msg
    mov     rdx, msg.len
    syscall

    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall


section .data
var1    db      0x55
msg:    db      "Hello, w1111o22rl222d!2!2!", 10
.len:   equ     $ - msg