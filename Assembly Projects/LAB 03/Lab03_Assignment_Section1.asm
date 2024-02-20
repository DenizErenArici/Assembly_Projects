org 100h

mov cx, N

sub cx,2

mov bx,2

myFunction:

    xor dx,dx
    
    mov ax,N
    
    div bx
    
    cmp dx,0
    
    je end
    
    inc bx

loop myFunction

ret

end:
    
    mov isPrime,0
    
    ret

N dw 5

isPrime dw 1