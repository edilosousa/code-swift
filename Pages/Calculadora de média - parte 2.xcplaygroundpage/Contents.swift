/*:
 # Calculadora de média - parte 2
 
 Você lembra daquele programa que fizemos para calcular a média do João na semana passada né? Mas acontece que o professor pediu para que você expandisse aquele programa, pra que ele possa usar com qualquer aluno.
 
 A ideia dele é a seguinte:
 
 - O professor deve inserir o nome do aluno e as notas dos 4 bimestres do aluno ao iniciar o programa
 - O programa deve fazer o cálculo da média das notas
 - Se a média do aluno for maior que 7.5, o aluno está aprovado. Do contrário, o aluno está reprovado.
 - Tendo essas informações, o sistema deve retornar uma mensagem dizendo: "O \(aluno) foi \(aprovacao) com nota \(media)".
 
 Faça seu programa nas linhas abaixo.
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