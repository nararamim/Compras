class CarrinhoProduto
  attr_accessor :codigo, :nome, :preco, :quantidade

  def initialize(args)
    self.codigo = args[:codigo]
    self.nome = args[:nome]
    self.preco = args[:preco]
    self.quantidade = args[:quantidade]
  end

  def mostrar # Método usado pelo método puts() para formatar a saída
    "#{codigo} -  #{nome} (R$ #{preco}), quantidade: #{quantidade} "
  end

end