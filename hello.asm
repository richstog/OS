mov bx, 4
cmp bx, 5
je label
jmp $

label:
    mov ah, 0x0e
    mov al, 'X'
    int 0x10

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
; nasm -f bin hello.asm -o hello.bin
; qemu-system-x86_64 file.bin