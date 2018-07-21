#language: pt
Funcionalidade: Saque em conta corrente
    Sendo um cliente que é correntista do banco
    Posso sacar dinheiro
    Para poder comprar em lugares que não aceitam débito ou créditos

@task1 
Cenário: Saque

    Dado que eu tenho uma conta com 1000 reais
    Quando faço um saque no valor de 200 reais
    Então 800 reais será meu saldo final
    E devo ver a seguinte mensagem 'Saque com sucesso. Muito Obrigado!'

@task2
Cenário: Cliente não tem saldo disponivel

    Dado que eu tenho uma conta com 0 reais
    Quando faço um saque no valor de 100 reais
    Então 0 reais será meu saldo final
    E devo ver a seguinte mensagem 'Saldo insuficiente para saque.'

@task3
Cenário: Saque com valor acima do saldo disponivel

    Dado que eu tenho uma conta com 100 reais
    Quando faço um saque no valor de 200 reais
    Então 100 reais será meu saldo final
    E devo ver a seguinte mensagem 'Saldo insuficiente para saque.'

@task4
Cenário: Valor limite para saque
    Dado que eu tenho uma conta com 1000 reais
    Quando faço um saque no valor de 701 reais
    Então 1000 reais será meu saldo final
    E devo ver a seguinte mensagem 'Valor máximo por transação deve ser de 700 reais!'