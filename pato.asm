mov ax, 400h
mov ds, ax


mov al, 13h
mov ah, 0
int 10h 



tamanio equ 6h ;TAMANIO BROCHA
ancho equ 66h

mov al, 0011b
mov cx, 50
mov dx, 2 
          
;call cuadrado10x10

mov bx, 11h
call fila 

call capa0 
call capa0
call capa0
call capa0
call capa0
call capa0
call capa0
call capa1
call capa2
call capa3
call capa4
call capa5
call capa6
call capa7 
call capa8
call capa9
call capa9
call capa9
call capa9
call capa9
               
bucle:
jmp bucle               



 




cuadrado10x10:  

mov (0x351), tamanio  

contador equ (0x350)  
contador2 equ (0x351)

vertical: 
mov (0x350), tamanio 
    horizontal:
        mov ah, 0ch 
        int 10h   
        inc cx
        dec contador
        jz salir
        jmp horizontal
    salir: 
    inc dx
    sub cx,tamanio
    dec contador2
    jz salir2  
    jmp vertical 
    
salir2:
ret  
      
      
fila:
   call cuadrado10x10   
   add cx, tamanio
   sub dx, tamanio  
   dec bx   ;contador: bx
   jz fin
   jmp fila
fin: 
ret
   
capa0:
    add dx, tamanio
    sub cx, ancho
    mov bx, 11h   
    call fila
ret
     
capa1: 
    add dx, tamanio
    sub cx, ancho
    mov bx, 6h   
    call fila 
    
    mov al, 1111b
    mov bx, 6h   
    call fila  
    
    mov al, 0011b
    mov bx, 5h   
    call fila   
ret

capa2:
    add dx, tamanio
    sub cx, ancho
    mov bx, 5h   
    call fila
    
    mov al, 1111b
    mov bx, 8h   
    call fila
    
    mov al, 0011b
    mov bx, 4h   
    call fila     
ret

capa3:
    add dx, tamanio
    sub cx, ancho
    mov bx, 4h   
    call fila
    
    mov al, 1111b
    mov bx, 10   
    call fila
    
    mov al, 0011b
    mov bx, 3h   
    call fila     
ret

capa4:
    add dx, tamanio
    sub cx, ancho
    mov bx, 4h   
    call fila
    
    mov al, 0000b
    mov bx, 10   
    call fila
    
    mov al, 0011b
    mov bx, 3h   
    call fila     
ret 

capa5:
    add dx, tamanio
    sub cx, ancho
    mov bx, 4h   
    call fila
    
    mov al, 0000b
    mov bx, 3h   
    call fila
    
    mov al, 1111b
    mov bx, 1h   
    call fila
    
    mov al, 0000b
    mov bx, 3h   
    call fila
    
    mov al, 1111b
    mov bx, 2h   
    call fila 
    
    mov al, 0000b
    mov bx, 1h   
    call fila 
    
    mov al, 0011b
    mov bx, 3h   
    call fila  
         
ret
capa6:
    mov al, 0011b
    add dx, tamanio
    sub cx, ancho
    mov bx, 2h   
    call fila
    
    mov al, 0110b
    mov bx, 6h   
    call fila     
    
    mov al, 1111b
    mov bx, 1h   
    call fila 
    
    mov al, 1101b
    mov bx, 1h   
    call fila
    
    mov al, 1111b
    mov bx, 1h   
    call fila
    
    mov al, 1101b
    mov bx, 1h   
    call fila
    
    mov al, 1111b
    mov bx, 2h   
    call fila 
    
    mov al, 0011b
    mov bx, 3h   
    call fila     
   
ret  

capa7: 
    mov al, 0011b
    add dx, tamanio
    sub cx, ancho
    mov bx, 2h   
    call fila
    
    mov al, 0110b
    mov bx, 6h   
    call fila
    
    mov al, 1111b
    mov bx, 6h   
    call fila 
    
    mov al, 0011b
    mov bx, 3h   
    call fila 
    
ret
capa8:
    mov al, 0011b
    add dx, tamanio
    sub cx, ancho
    mov bx, 3h   
    call fila
    
    mov al, 0110b
    mov bx, 5h   
    call fila
    
    mov al, 1111b
    mov bx, 6h   
    call fila
    
    mov al, 0011b
    mov bx, 3h   
    call fila
    
ret
capa9:
    mov al, 0011b
    add dx, tamanio
    sub cx, ancho
    mov bx, 4h   
    call fila
    
    mov al, 1111b
    mov bx, 10   
    call fila
    
    mov al, 0011b
    mov bx, 3h   
    call fila
    
ret
    
    
