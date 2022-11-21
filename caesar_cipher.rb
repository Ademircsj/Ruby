#Implement a caesar cipher that takes in a string and the shift #factor and then outputs the modified string:

def ler_string ()
    puts "Informe uma string: "
    frase = gets().to_s.chomp #Garantir que o primeiro dado seja uma string
    return frase
end

def ler_chave()
  puts "Informe uma chave: "
  chave = gets().chomp.to_i #Garantir que o segundo dado seja um inteiro
  return chave
end

def declara_alfabeto ()
  alfabeto=["a","b","c","d","e","f","g","h","i","j",
         "k","l","m","n","o","p","q","r","s","t",
         "u","v","w","x","y","z"]
  return alfabeto
end

def transforma_frase_em_vetor(frase)
   return frase.split(//)
end


def cifrar_vetor(frase_vetor, alfabeto, chave)
      tamanho_frase = frase_vetor.length
      vetor_cifrado = Array.new (tamanho_frase) 
   

      frase_vetor.each_with_index do |letra_frase, indice|
          alfabeto.each_with_index do |letra_alfabeto, indice_alfabeto|
           if(letra_frase == letra_alfabeto)
               if((indice_alfabeto+chave)>=26)

                  vetor_cifrado[indice] = alfabeto[(indice_alfabeto+chave)-26]
               elsif

                  vetor_cifrado[indice] = alfabeto[indice_alfabeto+chave]
               end
            end
          end
      end

      return vetor_cifrado
end

def substitui_nil(vetor_cifrado)
    vetor_cifrado.each_with_index do |letra, indice|
        unless letra != nil
            vetor_cifrado[indice] = " " #substitui os nils da string por espaço em branco
        end
    end
    p vetor_cifrado
end


def mostra_resultado(vetor_cifrado)
    substitui_nil(vetor_cifrado)
    puts vetor_cifrado.join
end

#Fluxo principal

frase = ler_string() #Armazena a frase a ser cifrada
chave = ler_chave()  #Armazena a chave da cifra
alfabeto = declara_alfabeto() #Cria e armazena o alfabeto
frase_vetor = transforma_frase_em_vetor(frase) #Transforma a string inserida pelo usuário em um vetor
vetor_cifrado = cifrar_vetor(frase_vetor, alfabeto, chave) #Aplica a lógica de cifra ao vetor da frase
mostra_resultado(vetor_cifrado) # mostra a frase cifrada
