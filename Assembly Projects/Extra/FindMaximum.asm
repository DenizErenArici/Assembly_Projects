org 100h 

mov si,0

mov cl,255

mov bx,0

mainFunc:

    mov al, N[si]
    
    cmp bl,al
    
    jl set
    
    inc si

loop mainFunc

jmp end

set:
    mov bl,al
    
    inc si
    
    jmp mainFunc          

end:
ret

N db 3,2,5,6,7,4,2,1,9