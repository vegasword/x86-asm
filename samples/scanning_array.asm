.386
.model flat

.data
;intArray SWORD 0,0,0,0,1,3,0,-34,-56,7,8
intArray SWORD 0,0,0,0,0

.code
_start proc
  mov ebx, OFFSET intArray
  mov ecx, LENGTHOF intArray

LP:
  cmp WORD PTR[ebx], 0
  jnz FOUND
  add ebx, 2
  loop LP
  jmp NOTFOUND

FOUND:
  movsx eax, WORD PTR[ebx]
  jmp QUIT

NOTFOUND:
  mov eax, 99999

QUIT:
  ret

_start endp
end _start