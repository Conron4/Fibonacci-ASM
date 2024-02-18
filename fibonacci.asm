section .data
    format db "Result: %d", 10, 0

section .bss 
    result resd 2

section .text
    global _main
    extern _printf
_main:
    mov ecx, 10
    mov eax, 1
    mov ebx, 1
l1:
    add eax, ebx
    push eax
    push ebx
    mov [result], eax
    push ecx
    push dword [result]
    push format
    call _printf
    add esp, 8
    pop ecx
    pop eax
    pop ebx
    loop l1
    ret
