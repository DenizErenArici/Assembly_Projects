org 100h

cmp N,14
jle ERROR
cmp N,26
jge ERROR

mov si,1
mov arr[0],0
inc si
mov arr[1],1
mov cl,N
mov ch,0
sub cl,2
mov bl,2


START:
mov ax,si
div bl
inc si
cmp ah,0
je EVEN
jne ODD

EVEN:
xor ax,ax
dec cl
cmp cl,0
je END
mov al,arr[si-1]
add al,arr[si-2]
mov arr[si],al
jmp START 

ODD:
xor ax,ax
dec cl
cmp cl,0
je END
mov al,arr[si-1]
sub al,arr[si-2]
mov arr[si],al
jmp START



ERROR:
lea si,MESSAGE
mov cx,38
mov ah,0Eh
GO:LODSB
int 10h
loop GO
  
END:

ret
N db 20
arr db 26 DUP(0)
MESSAGE db 'Please enter a value between 14 and 26',0