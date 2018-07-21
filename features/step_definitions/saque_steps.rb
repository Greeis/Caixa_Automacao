Dado("que eu tenho uma conta com {int} reais") do |saldo_inicial| # nome das variaveis
  @conta = Conta.new
  @conta.saldo = saldo_inicial
end

Quando("faço um saque no valor de {int} reais") do |valor_saque|
  @res = @conta.saque(valor_saque)
end

Então("{int} reais será meu saldo final") do |saldo_final|
  expect(@conta.saldo).to eql saldo_final #espero que o saldo da minha conta seja igual ao saldo final (documentação)
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
  #então é metodo que foi feito para verificação
  puts @conta.mensagem_saida
  puts mensagem
  expect(@conta.mensagem_saida).to eql mensagem # espero que a mensagem seja igual a mensagem da documentação
end

# Criação da Classe

class Conta
  attr_accessor :saldo, :mensagem_saida

  def saque (valor)
    if valor <= 700
      if saldo > valor # saldo é maior que o valor que deseja sacar
        @saldo -= valor
        @mensagem_saida = 'Saque com sucesso. Muito Obrigado!'
      else
        @mensagem_saida = 'Saldo insuficiente para saque.'    
      end
    else
      @mensagem_saida = 'Valor máximo por transação deve ser de 700 reais!'
    end
  end
end 