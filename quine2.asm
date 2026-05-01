org 0x100

mov ah, 9
mov dx, source
int 0x21
mov cx, -1
mov di, source
L:
mov dx, start
int 0x21
mov al, 10
mov dx, di
repne scasb
mov byte [di-2], 36
int 0x21
mov dx, end_of_line
int 0x21
cmp byte [di], 36
jne L
mov dx, end_of_source
int 0x21
ret

start db 'db ',34,36
end_of_line db 34,',13,10',13,10,36
end_of_source db 'db 36',36
source:
db "org 0x100",13,10
db "",13,10
db "mov ah, 9",13,10
db "mov dx, source",13,10
db "int 0x21",13,10
db "mov cx, -1",13,10
db "mov di, source",13,10
db "L:",13,10
db "mov dx, start",13,10
db "int 0x21",13,10
db "mov al, 10",13,10
db "mov dx, di",13,10
db "repne scasb",13,10
db "mov byte [di-2], 36",13,10
db "int 0x21",13,10
db "mov dx, end_of_line",13,10
db "int 0x21",13,10
db "cmp byte [di], 36",13,10
db "jne L",13,10
db "mov dx, end_of_source",13,10
db "int 0x21",13,10
db "ret",13,10
db "",13,10
db "start db 'db ',34,36",13,10
db "end_of_line db 34,',10',10,36",13,10
db "end_of_source db 'db 36',36",13,10
db "source:",13,10
db 36