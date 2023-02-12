#Juliana Sartori#

.text
.globl _func
_func:
   pushl %ebp
   
    movl %esp,%ebp
	subl $8,%esp   															#pontuacao,j
	movl $0, -4(%ebp) 														#pontuacao esta sendo inicializada(para nao dar lixo)
	movl $0, -8(%ebp) 														#j esta sendo inicializada(para nao dar lixo)
##########IFL25	
	movl 8(%ebp),%eax 														#result
	movl 16(%ebp),%ecx 														#vet[0]
	cmpl 0(%ecx),%eax 														#comparando a 1°posi, com rsul
	jg Lelse
		
		movl -4(%ebp),%eax 												 	#eax=pontuacao
		addl 12(%ebp),%eax 													#pontuacao += C
		movl %eax,-4(%ebp)
		
	jmp Lendif
	Lelse:
		
		movl 12(%ebp),%eax   												#eax=c
        subl $1,%eax        												#c-1
        movl %eax,-8(%ebp)  												#j=c-1 
		Lfor:
			cmpl $0,-8(%ebp)  												#j >= 0
			jl Lendfor
			
				movl 8(%ebp),%eax 											#eax=result
				movl %ecx,%edx  											#edx=[0]
				#somar posicao j a posicao 0
				addl -8(%ebp),%edx
				addl -8(%ebp),%edx
				addl -8(%ebp),%edx
				addl -8(%ebp),%edx 											#L32-35, j*4
				cmpl 0(%edx),%eax 											#acessando memory
				
				jle Lendif2
				
					movl -4(%ebp),%eax 										#eax= pontuacao
					addl 12(%ebp),%eax 										#eax=pontuacao+c
					subl -8(%ebp),%eax 										#eax=pontuacao += C - j
					subl $1,%eax 											#pontuacao += C - j - 1;
					movl %eax,-4(%ebp) 										#pontuacao =eax
					jmp Lendfor 											# break;
				Lendif2:
			
			subl $1,-8(%ebp)  												#j--
		jmp Lfor
		Lendfor:
	
	Lendif:
	
	movl -4(%ebp),%eax
	movl %ebp,%esp
    popl %ebp
ret
        
           
         