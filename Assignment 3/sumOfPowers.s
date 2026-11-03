.global sumOfPowers

sumOfPowers:
    push %rbp
    mov %rsp, %rbp

    mov $0, %eax   #sum = 0
    mov $1, %ecx   #counter i =1 

loop:
    cmp %edi, %ecx #compare coutner with n
    jg Done
    mov %ecx, %edx   #edx = i
    imul %ecx, %edx   #edx = i * i
    add %edx, %eax  #sum += i*i
    inc %ecx #increase counter

    jmp loop #back to loop

Done: 
    pop %rbp
    ret 
