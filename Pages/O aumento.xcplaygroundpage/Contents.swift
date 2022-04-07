//: [Previous](@previous)
/*:
 # O aumento
 
 Começo de ano, produtividade alta e um ano inteiro pela frente. Parece um ótimo momento para reconhecer e presentear os funcionários de uma empresa. Mas imagina que chato seria ter que fazer o cálculo um por um?
 
 Pois então, nós programadores temos a solução pra isso. Vamos criar um programa para calcular o aumento dos salários de uma empresa. Olha só os requisitos:
 
 - A função deve receber do usuário o nível do colaborador e o salário anterior. Os dois parâmetros são números inteiros.
 - Na primeira linha, devemos declarar a variável que vai guardar a porcentagem de aumento.
 
 - A empresa dividiu seus funcionários em 3 níveis, sendo que cada um dos níveis tem uma porcentagem diferente de aumento. Então o primeiro passo é conferir qual nível é o do funcionário e trocar o valor da nossa variável da porcentagem, conforme os números abaixo.
         Para o nível 1, o aumento é de 10%.
         Para o nível 2, o aumento é de 20%.
         Para o nível 3, o aumento é de 30%.
         Para todos os outros, o aumento é de 40%.
 
 - Em seguida, vamos calcular o aumento, criando uma nova variável cujo valor será o cálculo que dirá qual é o salário atual (pós aumento) do colaborador.
 - E depois vamos precisar descobrir qual foi a diferença entre o salário anterior e o atual.
 - Por último, você deve informar ao usuário qual era o salário anterior, quanto ele teve de aumento, qual o salário atual e qual foi o valor da diferença.
 
 */

func calculoAumento(nivel: Int, salarioAnterior: Float){
    var porcentagem: Float

    if(nivel == 1){
        porcentagem = 0.1
    }else if (nivel == 2){
        porcentagem = 0.2
    }else if (nivel == 3){
        porcentagem = 0.3
    }else{
        porcentagem = 0.4
    }

    
    let diferenca = salarioAnterior * porcentagem
    let salarioAtual = salarioAnterior + diferenca

    print("Parabéns seu salário foi de R$\(salarioAnterior) para o salario atual R$\(salarioAtual) e o seu aumento foi equivalente = R$\(porcentagem*100) e uma 
    diferença em relação ao seu salario anterior de R$\(diferenca)")
}

calculoAumento(nivel: 2, salarioAnterior: 7000)

//: [Next](@next)
