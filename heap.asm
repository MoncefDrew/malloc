bits 32
global memspace

%define Heapsize  (1024*1024*1024/4)

Section .data alloc writ noexec progbits
_memspace:
  dd _memspace


Section .heap alloc write noexec progbits
memspace:
   heapsize equ Heapsize
   resd heapsize


Section .note.GNU-stack noalloc
