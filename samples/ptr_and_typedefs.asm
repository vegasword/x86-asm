.386
.model flat

PBYTE TYPEDEF PTR BYTE
PWORD TYPEDEF PTR WORD
PDWORD TYPEDEF PTR WORD

.data
someBytes BYTE 10h, 20h, 30h
someWords WORD 1, 2, 3
someDwords DWORD 4, 5, 6

ptr1 PBYTE someBytes
ptr2 PWORD someWords
ptr3 PDWORD someDwords

.code
_start proc
  mov esi, ptr1
  mov al, [esi]
  
  mov esi, ptr2
  mov ax, [esi]
  
  mov esi, ptr3
  mov eax, [esi]
  ret

_start endp
end _start
