Algoritmo "Atividade Pr�tica do M�dulo 2"
//Usando conceitos de programa��o estruturada (Vetor), criar em pseudoc�digo
// um menu para simular um cadastro para uma ag�ncia de viagens com as
// seguintes fun��es: cadastro de cliente e cadastro de destino, criar tamb�m
// uma consulta para cada estrutura de dados.

const

   maxI = 1000

var

   cliente: vetor[1..maxI] de caracter
   destino: vetor[1..maxI] de caracter
   seletor: caracter
   ic: inteiro

procedimento menuCadastro ()

var

   acao: caracter

inicio

   escreval()
   escreval("Menu de Cadastro")
   enquanto ((acao <> "S") e (acao <> "s")) faca
      ic <- (ic+1)
      escreva("Cadastre nome do cliente ", ic,": ")
      leia(cliente[ic])
      escreva("Informe destino: ")
      leia(destino[ic])
      repita
         escreva("Sair? 'S/N': ")
         leia(acao)
         se ((acao <> "S") e (acao <> "s")) e ((acao <> "N") e (acao <> "n")) entao
            escreval("Op��o inv�lida")
         fimse
         escreval()
      ate ((acao = "S") ou (acao = "s")) ou ((acao = "N") ou (acao = "n"))
   fimenquanto

fimprocedimento

procedimento menuConsultaCliente ()

var

   consulta: caracter
   i: inteiro

inicio

   i <- 1
   escreval()
   escreval("Menu consulta cliente")
   enquanto (consulta <> "Sair") e (consulta <> "sair") e (consulta <> "SAIR")  faca
      escreval("Insira nome para consultar ou 'SAIR' para sair do menu!")
      leia(consulta)
      se (consulta <> "Sair") e (consulta <> "sair") e (consulta <> "SAIR") entao
         para ic de 1 ate maxI faca
            se consulta = cliente[ic] entao
               escreval("O cliente ", cliente[ic], " tem destino ", destino[ic],".")
               escreval()
               i <- ic
            fimse
         fimpara
         se consulta <> cliente[i] entao
            escreval("Cliente n�o encontrado!")
            escreval()
         fimse
      fimse
   fimenquanto

fimprocedimento

procedimento menuConsultaDestino ()

var

   dest: caracter
   consulta: caracter
   i: inteiro

inicio

   escreval()
   escreval("Menu consulta destino")
   enquanto (consulta <> "Sair") e (consulta <> "sair") e (consulta <> "SAIR")  faca
      escreval("Insira destino para consultar ou 'SAIR' para sair do menu!")
      leia(consulta)
      se (consulta <> "Sair") e (consulta <> "sair") e (consulta <> "SAIR") entao
         escreval("O destino ", consulta, " tem o(s) seguinte(s) cliente(s):")
         para ic de 1 ate maxI faca
            se consulta = destino[ic] entao
               escreval(cliente[ic])
               dest <- destino[ic]
            fimse
         fimpara
         se consulta <> dest entao
            escreval("N�o existem clientes para esse destino!")
         fimse
         escreval()
      fimse
   fimenquanto

fimprocedimento

inicio

   escreval("Menu inicial")
   enquanto (seletor <> "FIM") e (seletor <> "Fim") e (seletor <> "fim") faca
      escreval()
      escreval("Escolha 1 cadastro, 2 consultar cliente, 3 consultar destino")
      escreva("ou FIM para fechar o sistema: ")
      leia(seletor)
      se seletor = "1" entao
         menuCadastro ()
      senao
         se seletor = "2" entao
            menuConsultaCliente ()
         senao
            se seletor = "3" entao
               menuConsultaDestino ()
            senao
               se (seletor <> "FIM") e (seletor <> "Fim") e (seletor <> "fim") entao
                  escreval ("Op��o inv�lida!")
               fimse
            fimse
         fimse
      fimse
   fimenquanto

Fimalgoritmo