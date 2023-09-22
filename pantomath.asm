; Maia Johnson - 100739773
; Luke Jackson - 100749102
; Assignment Part 2 - pantomath quiz
; pantomath.asm

extern printf
extern scanf
extern exit

global main

section .text

calculateScore:
    mov ax, [rdi]
    mov bl, 10
    ;div bl
    mul bl
    
    ret

checkAnswer:
    mov rdx, 0
    mov rsi, answers
    mov r8, questions
    add rsi, [r8]
    
    mov dl, [rsi]
    sub dl, 48          ; subtract '0' b/c rsi is char
    mov bl, [rdi]
   
    cmp dl, bl
    jne return
    mov bl, 1
    mov rcx, correct
    add [rcx], bl
    mov bl, [rcx]
    
return:
    ;inc rsi
    mov bl, 1
    add [r8], bl
    ret

main:

    ; printf(intro)
    mov rdi, intro
    mov rax, 0
    push rbx
    call printf
    pop rbx

; so you can minimize the questions
gameStart:

    ; printf(question1)
    mov rdi, question1
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question2)
    mov rdi, question2
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question3)
    mov rdi, question3
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question4)
    mov rdi, question4
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question5)
    mov rdi, question5
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question6)
    mov rdi, question6
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question7)
    mov rdi, question7
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question8)
    mov rdi, question8
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question9)
    mov rdi, question9
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

    ; printf(question10)
    mov rdi, question10
    mov rax, 0
    push rbx
    call printf
    pop rbx

    ; scanf("%s", answer)
    mov rdi, inputFormat
    mov rsi, answer
    mov rax, 0
    push rbx
    call scanf
    pop rbx 

    ; checkAnswer(answer)
    mov rdi, answer            
    mov rax, 0
    push rbx
    call checkAnswer
    pop rbx

endOfGame:

    ; calculateScore
    mov rdi, correct
    mov rax, 0
    push rbx
    call calculateScore
    pop rbx

    ; print exit messages
    mov rsi, rax
    cmp rsi, 50
    jge winningMessage

    ; printf(question)
    mov rdi, failMessage
    mov rax, 0
    push rbx
    call printf
    pop rbx
    jmp end

winningMessage:
    mov rdi, passMessage
    mov rax, 0
    push rbx
    call printf
    pop rbx

end:
    mov rax, 0
    call exit

section .data

    answer dq 0
    correct dq 0
    questions dq 0
    inputFormat db "%d", 0
    answers db "1412342314", 0
    intro db "Welcome to Pantomath Quiz: the random knowledge test!", 0ah, 0dh, 0
    passMessage db "%d PERCENT! You have Pantomath Potential", 0ah, 0dh, 0
    failMessage db "%d PERCENT...Random facts might not be your thing", 0ah, 0dh, 0
    
    question1 db "What is the official language of Spain? (enter 1,2,3, or 4)", 0ah, 0dh
    options1 db "1.Castilian(Spanish) 2.Spanish 3.Catalan 4.Galician", 0ah, 0dh, 0
   
    question2 db "What is the most popular alcohol in Japan? (enter 1,2,3, or 4)", 0ah, 0dh
    options2 db "1.Soju 2.Sake 3.Vodka 4.Beer", 0ah, 0dh, 0
   
    question3 db "The capital city of Mexico is Mexico City. T/F? (enter 1 or 2)", 0ah, 0dh
    options3 db "1.True 2.False ", 0ah, 0dh, 0
   
    question4 db "A polyglot...? (enter 1,2,3, or 4)", 0ah, 0dh
    options4 db "1.is gluttonous 2.knows many languages 3.lies 4.sleeps constantly", 0ah, 0dh,0
   
    question5 db "What year did the Apollo 11 land on the moon? (enter 1,2,3, or 4)", 0ah, 0dh
    options5 db "1.1958 2.1967 3.1969 4.1972", 0ah, 0dh, 0
   
    question6 db "How many moons does Jupiter have? (enter 1,2,3, or 4)", 0ah, 0dh
    options6 db "1.12 2.61 3.49 4.79", 0ah, 0dh, 0
   
    question7 db "When did Picasso die? (enter 1,2,3, or 4)", 0ah, 0dh
    options7 db "1.1500 2.1973 3.1814 4.1643", 0ah, 0dh, 0
   
    question8 db "What was Galileo? (enter 1,2,3, or 4)", 0ah, 0dh
    options8 db "1.Russian 2.A Painter 3.An Astronomer 4.French", 0ah, 0dh, 0
   
    question9 db "Korean age is ONE year more than ages in the West. T/F? (enter 1 or 2)", 0ah, 0dh
    options9 db "1.True 2.False", 0ah, 0dh, 0
   
    question10 db "When did the Vietnam War end? (enter 1,2,3, or 4)", 0ah, 0dh
    options10 db "1.1960 2.1972 3.1980 4.1975", 0ah, 0dh, 0