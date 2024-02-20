org 100h

mov cx,N

mov bx,2

mainFunc:

mov bp,N

mov ax,bx

mul bx

cmp ax,bp

je setTrue

jg end

inc bx

loop mainFunc

setTrue:

mov isSquare, 1

jmp end

end:

ret

N dw 5

isSquare dw 0



