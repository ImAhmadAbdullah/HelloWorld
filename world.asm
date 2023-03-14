section .data
    hello db 'Hello World!',0Ah ; 0Ah is linefeed
section .text
    global _start
_start:
    ; write 'Hello World!' to stdout
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, 13
    int 0x80
    ; exit with 0
    mov eax, 1
    xor ebx, ebx
    int 0x80
