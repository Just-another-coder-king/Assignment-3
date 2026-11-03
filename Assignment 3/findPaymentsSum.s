.global findPaymentsSum

findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %ecx       #counter ecx = 0
    mov $0, %eax  #sum = 0

Loop:
    cmp %ecx, %esi     #compare counter with number of payments
    jle Done  #jump to add is counter less than payment number

Add:
    add 8(%rdi), %eax #add first salary
    add $4, %rdi #add to counter
    inc %ecx #increase counter
    jmp Loop
    
Done:    
    pop %rbp
    ret
    