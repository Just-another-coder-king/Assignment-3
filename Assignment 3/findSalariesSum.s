.global findSalariesSum

findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %ecx       #counter ecx = 0
    mov $0, %eax       #sum = 0

Loop:
    cmp %ecx, %esi     #compare counter with number of payments
    jle Done           #jump to Done is counter greater than payment number
    jmp Add           #jump to add is counter less than payment number

Add:
    add 8(%rdi), %eax #add first salary
    add $12, %rdi        #go to next employer (12 because name is 8 bytes and salary is 4)
    inc %ecx            #increase counter 
    jmp Loop
    
Done:
    pop %rbp
    ret 
