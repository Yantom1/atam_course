.global _start

.section .text
_start:
    movq a, %rax
    movq b, %rbx
gcd:
    mov %rbx, %rcx
    xor %rdx, %rdx
    div %rbx
    mov %rcx, %rax
    mov %rdx, %rbx
    cmp $0, %rbx
    jne gcd
    mov %rax, %rsi
    movq a, %rax
    movq b, %rbx
    imul %rbx,%rax
    div %rsi
    mov %rax, c
     
    