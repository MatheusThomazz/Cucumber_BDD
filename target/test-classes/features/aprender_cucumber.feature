# language: pt
@unitários
Funcionalidade: Aprender Cucumber
  Como um aluno
  Eu quero aprender a ultilizar Cucumber
  Para que eu possa automatizar criterios de aceitação
  
Cenário: Deve executar especificação
  Dado que criei o arquivo corretamente
  Quando executa-lo
  Então a especificação deve finalizar com sucesso
  
  
Cenário: Deve incrementar um contador
	Dado que o valor do contador é 15
	Quando  eu incrementar em 3 
	Então o valor do contador sera 18
	
	@tipo1
Cenário: Deve incrementar um contador
	Dado que o valor do contador é 123
	Quando  eu incrementar em 35
	Então o valor do contador sera 158
	
@tipo2
Cenário: Deve calcular atraso na entrega
	Dado que a entrega é dia 05/04/2018	
	Quando a entrega atrasar em 2 dias
	Então a entrega sera efetuada em 07/04/2018
	
	@tipo1 @tipo2
Cenário: Deve calcular atraso na entrega da china
	Dado que a entrega é dia 05/04/2018
	Quando a entrega atrasar em 2 meses
	Então a entrega sera efetuada em 05/06/2018
	
Cenário: Deve criar steps genéricos para estes passos
    Dado que o ticket é AF345
    Dado que o valor da passagem é R$ 230,45
    Dado que o nome do passageiro é "Fulano da Silva"
    Dado que o telefone do passageiro é 9999-9999
    Quando criar os steps
    Então o teste vai funcionar
    
Cenário: Deve reaproveitar os steps "Dado" do cenário anterior
    Dado que o ticket é AB167
    Dado que o ticket especial é AB167
    Dado que o valor da passagem é R$ 1120,23
    Dado que o nome do passageiro é "Cicrano de Oliveira"
    Dado que o telefone do passageiro é 9888-8888
    


	
	
	
 
 
 
 