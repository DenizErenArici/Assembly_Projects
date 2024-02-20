org 100h

mov ax,num1

mov bx,num2

mov cx,0FFFFH

cmp bx,ax

jg swap

jl mainFunc

swap:

mov bp,ax

mov ax,bx

mov bx,bp

mainFunc:

xor dx,dx

div bx

cmp dx,0

je end:

mov ax,bx

mov bx,dx   
 

loop mainFunc

end:

mov gcd,bx

 

ret

num1 dw 36

num2 dw 48

gcd dw 0



