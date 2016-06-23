class Carrinho

 

  def adicionar

    puts "-------------"
    puts "Produtos disponíveis: "
    $produtos.each do |key,produto|    
      puts $produtos[key].mostrar   
    end 
    puts "-------------"

    puts "Qual o codigo do produto que você deseja adicionar ao carrinho?"
    cod = gets.chomp.to_i
    $produtos.each do |key,produto| 
      if key==cod  
            tamanho = $carrinho.size + 1
            i=0
            for i in 1..tamanho+1
                 if $carrinho[i].nil?
                    puts "Digite a quantidade desse produto : "
                    quantidade = gets.chomp.to_i
                    if(quantidade > 0 )
                      $carrinho[i] = {}
                      $carrinho[i] = CarrinhoProduto.new(codigo: i ,nome: $produtos[key].nome, preco: $produtos[key].preco, quantidade: quantidade) 
                      puts $carrinho[i].mostrar
                      return 
                    else
                      puts "Erro! Quantidade inválida!"
                      return  
                    end
                 end
            end    
      end   
    end 
    puts "Erro! Produto não encontrado na lista de produtos!!"  

    
    puts "-------------"
    return 
  end

  def remover_produto
    puts "Qual o codigo do produto que deseja excluir? "
    cod = gets.chomp.to_i
    $carrinho.each do |key,produto| 
      if key==cod       
        $carrinho.delete(key)
        puts"Produto deletado com sucesso!"
        return
      end 
    end 

    puts "Erro! Produto não encontrado em seu carrinho!"
    return
end

def remover_quantidade
  puts "Qual o codigo produto que deseja mudar a quantidade?"
  cod = gets.chomp.to_i
  $carrinho.each do |key,produto| 
    if key==cod  
      puts "Diga a nova quantidade: "
      quantidade = gets.chomp.to_i
      if (quantidade > 0)
        $carrinho[key] = CarrinhoProduto.new(codigo: key,nome:$carrinho[key].nome, preco: $carrinho[key].preco, quantidade: quantidade) 
        puts "Quantidade alterada com sucesso!"
        return
      elsif (quantidade == 0)
        $carrinho.delete(key)
        puts"Produto deletado do carrinho!"
        return
      else
         puts "Erro! Quantidade inválida!"
         remover
         return
      end

      end          
    end   
  puts "Erro! Produto não encontrado em seu carrinho!"  
  return
end



def remover

  puts "-------------"
  puts "Produtos em seu carrinho: "
  $carrinho.each do |key,produto|    
    puts $carrinho[key].mostrar   
  end 

  puts "-------------"
  puts "O que voce gostaria de fazer? "
  puts "1- Excluir um produto"
  puts "2- Modificar uma quantidade"
  puts "-------------"

  escolha=gets.chomp
  case escolha
    when "1"
      remover_produto
    when "2"
      remover_quantidade
      
    else
      puts "Ops! Essa opção não existe!"
    end

return

end

def visualizar

  puts "-------------"
  puts "Produtos em seu carrinho: "
  $carrinho.each do |key,produto|    
    puts $carrinho[key].mostrar   
  end 

  return

end


def limpar

  $carrinho.clear
  $carro= Carrinho.new
  return 0

end

def somar(soma)
  return (soma).reduce(:+)
end 

def comprar

  if ($carrinho.size >0)
    $soma = []
    $carrinho.each do |key,produto|
        $soma << $carrinho[key].preco * $carrinho[key].quantidade
    end

    puts "Valor total da compra R$ #{somar($soma)}"
    puts "-------------"
    puts "Deseja finalizar a compra ? "
    puts "1- Sim"
    puts "2- Não"
    puts "-------------"
    case gets.strip
      when "1"
          puts "Compra finalizada com sucesso !!"
          limpar
          return 
  
      when "2"
        return
      else
        puts "Opção inválida!"
      end       
      return  
  else
    puts "Ops você não tem produtos em seu carrinho!"
    return
   end     
end

end  