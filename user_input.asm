section .data
        Question db ' Enter something (between 1-10) ',0
        len_question equ $-Question
        Answer db ' You have entered ',0
        len_ans equ $-Answer

section .bss
        num resb 2

section .text
        global _start

_start:
        mov eax, 4
        mov ebx, 1
        mov ecx, Question
        mov edx, len_question
        int 80h


        mov eax, 3
        mov ebx, 2
        mov ecx, num
        mov edx, 2
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, Answer
        mov edx, len_ans
        int 80h

        mov eax, 4
        mov ebx, 1
        mov ecx, num
        mov edx, 2
        int 0x80

        mov eax, 1
        mov ebx, 0
        int 0x80
