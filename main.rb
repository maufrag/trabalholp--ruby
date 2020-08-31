def InserirValorNaLista(valor, lista)
  lista.push(valor);
end

def ObterValorParaLista(valor, lista)
  if valor.to_i.class == Integer
    if valor.to_i == 0 && valor != '0'
      return;
    end

    InserirValorNaLista(valor, lista);
  end
end

def OrdenarArray(lista)
  return lista.sort;
end

def ExibirSegundoMaior(lista)
 listaOrdenada = OrdenarArray(lista);

  if lista.length() == 0 && lista.length > 0
    puts 'Nenhum valor foi inserido';
  elsif lista.length() == 1
    puts 'O array só possui um elemento e seu valor é: ' + listaOrdenada[lista.length() - 1]
  else
    puts 'O segundo maior elemento do array é: ' + listaOrdenada[lista.length() - 2]
  end  
end

lista = Array.new;

10.times do
  puts 'Informe um valor:';
  valor = gets;
  ObterValorParaLista(valor, lista);
end

ExibirSegundoMaior(lista);