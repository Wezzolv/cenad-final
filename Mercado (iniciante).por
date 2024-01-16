programa {
  cadeia nome_cliente
  inteiro opcao,simounao,numero,mais_produtos,escolheu
  inteiro numero_produto[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }
  cadeia produto[] = { "Leite", "Achocolatado", "Pão de Forma", "Bolo", "Biscoito Recheado", "Biscoito de polvilho", "Macarrão", "Refrigerante", "Pente de Ovos", "Manteiga" }
  real preco[] = { "R$5.00", "R$6.00", "R$7.50", "R$10.00", "R$2.00", "R$3.50", "R$6.00", "R$8.00", "R$12.00", "R$4.50" }

  funcao inicio() {
  menu()
  }

  funcao menu()
  {
  escreva("Olá, qual o seu nome?\n")
  leia(nome_cliente)
  limpa()
  escreva("Em que posso ajudá-lo ", nome_cliente,"?\n\n")
  escreva("Gostaria de ver os produtos disponíveis?\n\n 1- Sim\t\t 2- não\n")
  leia(opcao)
  desejo()
  }



  funcao desejo()
  {
    escolha(opcao){
    caso 1:
    limpa()
    escreva("Nosso estabelecimento trabalha com uma grande variedade de produtos,\t")
    escreva("Dê uma olhada ;):\n\n")
    escreva("#------------------------------------------------------------------------------------//-//-----------------------------------------------------------------------------------------------#\n")
    escreva("0 -Leite\t\t1- Achocolatado\t\t2- Pão de forma\t\t3- Bolo\t\t 4-Biscoito recheado\t\t 5- Biscoito de polvilho\t\t 6- Macarrão\t\t 7- Refrigerante\t\t 8- Pente de Ovos\t\t 9- Manteiga ")
    escreva("#------------------------------------------------------------------------------------//-//-----------------------------------------------------------------------------------------------#")
    escolheu()
    pare

    caso 2:
    limpa()
    escreva("\nTudo certo, Até uma próxima vez :) !")
    pare
  }

funcao escolheu(){
  escreva("\nE então, gostaria de levar alguma das opções?\n\n")
  escreva("Digite 1 para sim, e 2 para não\n")
  leia(simounao)
  escolha_1()
  }
funcao escolha_1(){

  escolha(simounao){

    caso 1:
    limpa()
    escreva("Qual produto gostaria de levar ", nome_cliente, "\t?\n\n")
    lista()
    escreva("\n\nDigite o número correspondente ao produto..\n")
    leia(numero)
    compras()
    pare

    caso 2:
    limpa()
    escreva("\nTudo certo, Até uma próxima vez :) !")
    pare
  
  }
  funcao lista(){
    escreva("#------------------------------------------------------------------------------------//-//-----------------------------------------------------------------------------------------------#\n")
    escreva("0 -Leite\t\t1- Achocolatado\t\t2- Pão de forma\t\t3- Bolo\t\t 4-Biscoito recheado\t\t 5- Biscoito de polvilho\t\t 6- Macarrão\t\t 7- Refrigerante\t\t 8- Pente de Ovos\t\t 9- Manteiga ")
    escreva("#------------------------------------------------------------------------------------//-//-----------------------------------------------------------------------------------------------#")
    }


    funcao compras(){
      limpa()
    escreva("\n\nVocê selecionou: ")
    escreva(numero_produto[numero], "\t\t", produto[numero], "\t\t", preco[numero])
    escreva("\n\nVocê deverá pagar: ", preco[numero])
    mais_produtos1()
    }

    funcao mais_produtos1(){
    escreva("\n\nGostaria de levar mais alguma coisa além do : ",produto[numero], "? (1- sim, 2- nao)\n")
    leia(mais_produtos)

    se (mais_produtos == 1){
      limpa()
    lista()
    escreva("\n\nO que gostaria de levar?\n")
    leia(numero)
    limpa()
    escreva(numero_produto[numero], "\t\t", produto[numero], "\t\t", preco[numero])
    escreva("\n\nVocê deverá pagar: ", preco[numero])
    mais_produtos1()

    senao{
      limpa()
      escreva("Ok, obrigado pela compra.. Volte sempre :) !!")
    }


    }
    

