org 100h
    
mov si,2000h

mov di,2004h

mov cx,2


mainFunc:
    
    mov ax,[si]
    
    mov bx,[di]
    
    mov [si],bx
    
    mov [di],ax
    
    add si,2
    
    add di,2
    
loop mainFunc     
           

ret