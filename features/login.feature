#language:pt

Funcionalidade: Login no Sistema
	Como usuario do sistema
	Quero uma tela de login
	Para que eu possa acessar uma area restrita

Cenario: Fazer login no sistema com sucesso
Dado que eu esteja na tela de login
Quando eu preencho usuario e senha validos
E clico em login
Entao devo acessar o sistema com sucesso

Cenario: Tratamento de erro de login 
Dado que eu esteja na tela de login
Quando eu preencho usuario e nao preencho senha
E clico em login
Entao deve apresentar uma mensagem de erro
E os campos devem ser limpos

#mariana.rosas@c6bank.com