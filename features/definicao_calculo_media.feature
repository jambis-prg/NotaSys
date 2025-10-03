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

Scenario: Configuração de cálculo de média sem todos os pesos
Given Eu criando uma turma
And Estou na página “Configuração de Média”
When Eu preencho os campos da quantidade de avaliações
And Não Preencho 1 dos pesos das avaliações
And Especifico o cálculo de média
And Confirmo a configuração
Then Estando na mesma página
And Vejo uma mensagem de erro “200” que indica que o peso de uma das avaliações não foi definida.

Scenario: Configuração de cálculo de média sem especificação do cálculo
Given Eu criando uma turma
And Estou na página “Configuração de Média”
When Eu não preencho os campos da quantidade de avaliações
And Preencho os pesos de cada avaliação
And Não especifico o cálculo de média
And Confirmo a configuração
Then Estando na mesma página
And Vejo uma mensagem de erro “100” que indica que o cálculo da média não foi especificado
And novo passo

Scenario: Novo cenário
Given um estado
When eu faço algo
Then o estado muda

Scenario: mais um cenario novo
Given eu estou em um estado
When eu faço algo
Then fix(algo acontece com o estado)