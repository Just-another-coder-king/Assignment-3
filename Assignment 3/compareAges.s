.global compareAges

compareAges:
    push %rbp
    mov %rsp, %rbp

    mov 4(%rdi), %ecx #store age of a
    mov 4(%rsi), %edx #store age of b
    cmp %ecx, %edx #compare compare ages
    je Equal
    jmp Not


Equal: 
    mov $1, %eax
    jmp Done

Not:
    mov $0, %eax

Done:
    pop %rbp
    ret 
    