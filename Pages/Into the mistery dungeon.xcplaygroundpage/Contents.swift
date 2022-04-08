//: [Previous](@previous)
/*:
 # Into the mistery dungeon
 
 Estamos falando muito sobre aplicativos nesse curso, mas como programador você também precisa conhecer o mercado de jogos. Em 2019, a Pesquisa Game Brasil 2020 concluiu que mais de 70% dos brasileiros são adeptos a jogos eletrônicos, sendo que cerca de 86% desses jogadores preferem jogos para celular [(fonte)](https://olist.com/blog/pt/como-vender-mais/inteligencia-competitiva/mercado-de-games-no-brasil/). Com esse mercado em alta, nada mais justo do que aprendermos a fazer um jogo, não?
 
 Vamos então fazer um RPG de texto. Olha os requisitos:
 - Você precisa declarar duas variáveis do tipo bool. Uma para o monstro e outra para a armadilha. No início, as duas sempre serão falsas.
 
 ## Função walk
 - Você precisará de uma função para andar, que receberá uma direção em formato String
 - Dentro da função de andar, se a variável monstro for falsa E a variável armadilha também for falsa:
    - Você precisa conferir a direção que veio junto com a função.
    - O personagem pode andar em quatro direções: esquerda, direita, frente e trás. Atente-se para a escrita, lembre-se que letras maiúsculas, minúsculas e acentos são considerados. Se qualquer um deles for digitado corretamente pelo usuário, você vai dar um comando print com a seguinte mensagem: "Você andou para \(direcao)"
    - Se o usuário digitar qualquer outra coisa que não sejam as direções, você precisa dizer a ele que é uma direção inválida.
 - Agora, se a variável da armadilha for verdadeira:
    - Tem que avisar o usuário que ele precisa desarmar a armadilha usando o comando print.
 - E se nenhuma das opções anteriores acontecerem, significa que existe um monstro na sua frente.
    - Tem que avisar o usuário que ele precisa atacar o monstro, usando também o comando print.
 
 ## Função randomEvent
 - A função randomEvent vai ser utilizada para sortear o evento que acontece assim que o nosso personagem anda. São 3 opções: ele pode dar de cara com um monstro, ver uma armadilha ou pode não acontecer nada.
 - Essa função deve retornar uma String, que será nossa mensagem para o jogador de que algo aconteceu.
 - A primeira coisa que essa função vai fazer é sortear um número inteiro entre 0 e 2
    - Se o número for 0, a variável monstro passa a ser verdadeira e a função retorna um texto avisando que há um monstro a frente.
    - Se o número for 1, a variável da armadilha passa a ser verdadeira e a função retorna um texto avisando que há uma armadilha.
    - Se nenhum dos eventos anteriores for verdadeiro, a função retorna um texto dizendo que o caminho está livre e que podemos continuar.
 
 Deixamos preparadas abaixo mais duas funções que deixam o jogo mais divertido: a de ataque, que mata o monstro e a de desarmar a armadilha, a hora que você terminar é só apagar as barras de comentários :)
 */

//: [Next](@next)


var monster: Bool = false
var trap: Bool = false

func walk(direction: String){
   if(monster == false && trap == false){
      if(direction == "esquerda" || direction == "direita" || direction == "frente" || direction == "trás"){
         print("Você andou para \(direction)")
         print(randomEvent())
      }else{
         print("Essa é uma direção inválida!")
      }
   }else if(monster == false && trap == true){
      print("Armadilha a frente desarme-a!")
   }else {
      print("Monstro a frente ataque-o!")
   }
}

func randomEvent() -> String{
   var sortedNumber = Int.random(in: 0...2)
   if(sortedNumber == 0){
      monster == true
      return "Há um monstro a sua frente"
   }else if(sortedNumber == 1){
      trap == true
      return "Há uma armadilha a sua frente"
   }else{
      return "Caminho está livre pode continuar"
   }

}



func attack() {
    print("IÁAAAAAA")
    monster = false
    print("Você matou o monstro!")
}

func disableTrap() {
    print("Essa eu consigo desarmar!")
    trap = false
    print("Você desarmou a armadilha!")
}

walk(direction: "frente")


