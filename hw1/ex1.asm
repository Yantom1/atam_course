.global _start

.section .text
_start:
    movq num, %rax
    xor %ebx, %ebx #bits counter
    mov $65, %ecx #loop index
Loop: 
    rcl %rax
    jae CF
    inc %ebx
CF: 
    loop Loop
    
    movl %ebx, countBits

  


