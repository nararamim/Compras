require_relative 'carrinho.rb'
require_relative 'CarrinhoProduto.rb'
require_relative 'produto.rb'
  

class Aplicacao


  def initialize
    main_menu
  end

    $produtos= {}
    $produtos[1] = Produto.new(codigo: 1, nome:"perfume",  preco: 50)
    $produtos[2] = Produto.new(codigo: 2, nome:"brinco",  preco: 5)
    $produtos[3] = Produto.new(codigo: 3, nome:"colar",  preco: 8)
    puts $produtos[3].nome

    $carrinho = {}


  def main_menu

  
   
    puts "-------------"
    puts "Menu Principal"
      puts "1 - Adicionar"
      puts "2 - Remover"
      puts "3 - Visualizar"
      puts "4 - Limpar"
      puts "5 - Comprar"
      puts "6 - Sair"
      puts "-------------"

      case gets.strip
      when "1"
        $carro.adicionar
       when "2"
        $carro.remover
      when "3"
        $carro.visualizar
      when "4"
        carro.limpar
        
      when "5"
        $carro.comprar

      when "6"
        return
      else
        puts "escolha entre 1 e 6."   
      end
      main_menu
  end

  Aplicacao.new
end
