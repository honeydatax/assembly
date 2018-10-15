_main:
push bp
mov bp, sp
and sp, -16
sub sp, 16
mov dx, OFFSET LC0
call _puts
nop
int 20h
ret

_puts:
push ax
mov ah,9
int 21h
pop ax
ret


LC0 db "hello world$"
