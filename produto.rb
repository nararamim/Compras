class Produto
  attr_accessor :codigo, :nome, :preco

  def initialize(args)
    self.codigo = args[:codigo]
    self.nome = args[:nome]
    self.preco = args[:preco]
  end

  def mostrar# Método usado pelo método puts() para formatar a saída
    "#{codigo} -  #{nome} (R$ #{preco})"
  end

end