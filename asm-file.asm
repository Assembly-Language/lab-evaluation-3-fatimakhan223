

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "There is no positive element in the array",0
msg1 db "Total positive number value.",0
msg2 db "Total positive number.",0




.code
asmfunc PROC array:DWORD , p2:DWORD
    
    ;push ebp
    ;mov ebp,esp
   mov eax,0
   mov ebx,0
   mov esi,array
   mov ecx,p2
   next:
   mov eax,[esi]
   TEST eax,8000h
   jnz skip             ;it will skip negative values
   add ebx,eax
   
    
skip:
add esi,type array          ;it will move array to the next element
LOOP next


mov eax,0
mov eax,ebx

    ret
asmfunc ENDP
end