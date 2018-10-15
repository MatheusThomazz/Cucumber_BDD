# language: pt
Funcionalidade: Alugar filme
	Como um usuário 
	Eu quero cadastrar aluguéis de fimes
	Para controlar preços e datas de entrega
	

Cenário: Deve alugar um filme com sucesso 
	Dado um filme com estoque de 2 unidades
	E que o preço do aluguel seja R$ 3
	Quando alugar
	Então o preço do aluguel será R$ 3
	E a data de entrega sera em 1 dia
	E o estoque do filme será 1 unidade 


Cenário: Não deve alugar fimles sem estoque 
	Dado um filme com estoque de 0 unidades
	Quando alugar
	Então  não sera possivel por falta de estoque
	E o estoque do filme será 0 unidade
	
	
Cenário: Deve dar condições especiais para categoria extendida
	Dado um filme com estoque de 2 unidades
	E que o preço do aluguel seja R$ 4
	E que o tipo de aluguel seja extendido 
	Quando alugar 
	Então o preço do aluguel será R$ 8
	E a data de entrega sera em 3 dias
	E a pontuação sera de 2 pontos
	
Cenário: Deve alugar para categoria comun
	Dado um filme com estoque de 2 unidades
	E que o preço do aluguel seja R$ 4
	E que o tipo de aluguel seja comun
	Quando alugar 
	Então o preço do aluguel será R$ 4
	E a data de entrega sera em 1 dias
	E a pontuação sera de 1 pontos
	

	
	
	
	