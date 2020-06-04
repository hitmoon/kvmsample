# A test code for kvmsample

.globl _start
    .code16
_start:
    xorw %ax, %ax
    movw $0x5, %bx
    
loop1:
    out %ax, $0x10
    inc %ax
    cmp %ax, %bx
    jz hlt
    jmp loop1
hlt:
    hlt
