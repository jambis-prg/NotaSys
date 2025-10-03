Feature: Definição do cálculo de média
As a professor do sistema
I want to definir o cálculo da média da minha turma
So that o sistema calcule as notas finais com base nos critérios escolhidos

Scenario: Sucesso da configuração de cálculo de média
Given Eu criando uma turma
And Estou na página "Configuração de Média"
When Eu preencho os campos de quantidade de avaliações
And Preencho os pesos de cada avaliação
And Especifico o cálculo de média
And Confirmo a configuração
Then Estando na mesma página
And Vejo uma mensagem de sucesso que está configurado
And O sistema salva para aquela turma a configuracao

Scenario: COnfiguração de cálculo de média sem quantidade de avaliações
Given Eu criando uma turma
And Estou na página "Configuração de Média"
When Eu não preencho os campos da quantidade de avaliações
And Preencho os pesos de cada avaliação
And Especifico o cálculo de média
And Confirmo a configuração
Then Estando na mesma página
And Vejo uma mensagem de erro "300" que indica que o campo da quantidade de avaliações não foi definida