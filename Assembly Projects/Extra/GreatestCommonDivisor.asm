org 100h
mov al,num1
mov bl,num2
cmp al,bl
jl swap
jg gcd_loop
swap:
   
   mov bp,ax
   mov ax,bx
   mov bx,bp
   xor ah,ah
   xor bh,bh
   
gcd_loop:
   xor ah,ah
   div bl
   cmp ah,0
   jz end
   mov al,bl
   mov bl,ah
loop gcd_loop
end:
mov gcd,bl
ret
 
num1 db 36
num2 db 48

gcd db 0       