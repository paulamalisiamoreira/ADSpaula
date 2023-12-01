Algoritmo "SA livraria 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
tipo
   livros = registro
      nome: caractere
      autor: caractere
      preco: real
      anoPubli: inteiro
      genero: inteiro
      carrinho: logico
      livroID: inteiro
   fimregistro

   sugestao = registro
      nome: caractere
      autor: caractere
      genero: caractere
   fimregistro

Var
   livraria: vetor[0..4, 0..3] de livros
   i,j: inteiro
   valorTotal: real
   livrosSugeridos: vetor[0..10] de sugestao
   z:inteiro


   // fazendo o "banco de dados"
procedimento livrosPadrao()

inicio
   para i de 0 ate 4 faca
      livraria[i,0].genero <- i+1
   fimpara


   // atribuindo o nome

   livraria[0,0].nome <- "Teto para Dois"
   livraria[0,1].nome <- "Novembro, 9"
   livraria[0,2].nome <- "Orgulho e Preconceito"
   livraria[0,3].nome <- "A Culpa é das Estrelas"

   livraria[1,0].nome <- "O Ladrao de Raios"
   livraria[1,1].nome <- "a Volta ao mundo em 80 dias"
   livraria[1,2].nome <- "Harry Potter e a Pedra Filosofal"
   livraria[1,3].nome <- "Duna"

   livraria[2,0].nome <- "A paciente silenciosa"
   livraria[2,1].nome <- "Misery: Louca Obsessão"
   livraria[2,2].nome <- "A mulher na janela"
   livraria[2,3].nome <- "Verity"

   livraria[3,0].nome <- "Frankenstein"
   livraria[3,1].nome <- "O Retrato de Dorian Gray"
   livraria[3,2].nome <- "Drácula"
   livraria[3,3].nome <- "A Garota da Casa ao Lado"

   livraria[4,0].nome <- "O Milagre da Manhã"
   livraria[4,1].nome <- "O Homem Mais Rico da Babilônia"
   livraria[4,2].nome <- "O Poder do Hábito"
   livraria[4,3].nome <- "Pense e Enriqueça"

   // atribuindo o autor

   livraria[0,0].autor <- " Beth O’Leary"
   livraria[0,1].autor <- "Colleen Hoover"
   livraria[0,2].autor <- "Jane Austen"
   livraria[0,3].autor <- "John Green"

   livraria[1,0].autor <- "Rick Riordan"
   livraria[1,1].autor <- "Júlio Verne"
   livraria[1,2].autor <- "J. K. Rowling"
   livraria[1,3].autor <- "Frank Herbert"

   livraria[2,0].autor <- "Alex Michaelides"
   livraria[2,1].autor <- "Stephen King"
   livraria[2,2].autor <- "A. J. Finn"
   livraria[2,3].autor <- "Colleen Hoover"

   livraria[3,0].autor <- " Mary Shelley"
   livraria[3,1].autor <- "Oscar Wilde"
   livraria[3,2].autor <- "Bram Stoker"
   livraria[3,3].autor <- "Jack Ketchum"

   livraria[4,0].autor <- "Hal Eod"
   livraria[4,1].autor <- "GeorgSamuel Clason"
   livraria[4,2].autor <- "Charl Duhigg"
   livraria[4,3].autor <- "Napoln Hill"

   //atribuindo preço

   livraria	[0,0].preco	<- 35
   livraria	[0,1].preco	<- 25
   livraria	[0,2].preco	<- 55
   livraria	[0,3].preco	<- 45

   livraria	[1,0].preco	<- 49
   livraria	[1,1].preco	<- 22
   livraria	[1,2].preco	<- 50
   livraria	[1,3].preco	<- 60

   livraria	[2,0].preco	<- 34
   livraria	[2,1].preco	<- 35
   livraria	[2,2].preco	<- 49
   livraria	[2,3].preco	<- 28

   livraria	[3,0].preco	<- 43
   livraria	[3,1].preco	<- 35
   livraria	[3,2].preco	<- 49
   livraria	[3,3].preco	<- 28

   livraria	[4,0].preco	<- 23
   livraria	[4,1].preco	<-	14
   livraria	[4,2].preco	<-	36
   livraria	[4,3].preco	<-	23


   // atribuindo data

   livraria[0,0].anoPubli <- 2019
   livraria[0,1].anoPubli <- 2015
   livraria[0,2].anoPubli <- 1813
   livraria[0,3].anoPubli <- 2012

   livraria[1,0].anoPubli <- 2005
   livraria[1,1].anoPubli <- 1872
   livraria[1,2].anoPubli <- 1997
   livraria[1,3].anoPubli <- 1965

   livraria[2,0].anoPubli <- 2019
   livraria[2,1].anoPubli <- 1987
   livraria[2,2].anoPubli <- 2018
   livraria[2,3].anoPubli <- 2018

   livraria[3,0].anoPubli <- 1818
   livraria[3,1].anoPubli <- 1890
   livraria[3,2].anoPubli <- 1897
   livraria[3,3].anoPubli <- 2020

   livraria[4,0].anoPubli <- 2012
   livraria[4,1].anoPubli <- 1926
   livraria[4,2].anoPubli <- 2012
   livraria[4,3].anoPubli <- 1937

fimprocedimento


// procedimento de mostrar o gênero na tabela
procedimento mostrarGenero()

inicio
   limpatela
   escreval("                                                                                        Escolha uma opção abaixo:")
   escreval("                                                                                        [1]Romance")
   escreval("                                                                                        [2]Aventura")
   escreval("                                                                                        [3]Suspense")
   escreval("                                                                                        [4]Terror")
   escreval("                                                                                        [5]AutoAjuda")
   escreval("                                                                                        [6]Para sair")
fimprocedimento

// procedimento de mostrar nome
procedimento mostrarNome(i, j: inteiro)

inicio
   escreval(livraria[i, j].nome)
fimprocedimento

// procedimento para mostrar o preço
procedimento mostrarPreco(i, j: inteiro)

inicio
   escreval(livraria[i,j].preco)
fimprocedimento

// procedimento de mostrar o autor
procedimento mostrarAutor(i, j: inteiro)

inicio

   escreval(livraria[i, j].autor)

fimprocedimento


// procedimento de mostrar o lançamento
procedimento mostrarLanc(i, j: inteiro)
inicio

   escreval(livraria[i, j].anoPubli)

fimprocedimento


// procedimento para mostrar catálogo completo
procedimento mostrarCatalogoCompleto()
var
   k,l: inteiro
inicio
   limpatela
   para k de 0 ate 4 faca
      para l de 0 ate 3 faca
         escreval("                                                                                        -----------------------------------------------")
         escreval("                                                                                        ID do livro: ",k,l)
         escreva("                                                                                        Nome: ")
         mostrarNome(k,l)
         escreva("                                                                                        Preco: R$")
         mostrarPreco(k,l)
         escreva("                                                                                        Autor: ")
         mostrarAutor(k,l)
         escreva("                                                                                        Ano de lancamento: ")
         mostrarLanc(k,l)
         escreval("                                                                                        -----------------------------------------------")
         escreval
         escreval

      fimpara
   fimpara

fimprocedimento

// procedimento para mostrar a logo da livraria
procedimento tela()
inicio
mudacor("branco", "fundos")
mudacor("preto", "frente")
escreval("                                                                                                   BEM VINDO(A) à")
escreval("                                                                            --------------------------------------------------------")
escreval("                                                                            | \ | |  __ \  | |    (_)                    (_)")
escreval("                                                                            |  \| | |__) | | |     ___   ___ __ __ _ _ __ _  __ _")
escreval("                                                                            | . ` |  ___/  | |    | \ \ / / '__/ _` | '__| |/ _` |")
escreval("                                                                            | |\  | |      | |____| |\ V /| | | (_| | |  | | (_| |")
escreval("                                                                            |_| \_|_|      |______|_| \_/ |_|  \__,_|_|  |_|\__,_|")
escreval("                                                                            --------------------------------------------------------")
escreval
escreval
escreval

fimprocedimento

// mostrar os livros do genero especifico
procedimento livrosDoGenero()
var
   opcao, l, pause: inteiro
inicio
   limpatela
   mostrarGenero()
   escreva("                                                                                        ")
   leia(opcao)
   escolha opcao
      //[1]Romance
      //[2]Aventura
      //[3]Suspense
      //[4]Terror
      //[5]AutoAjuda

   caso 1
   mudacor("branco","fundos")
mudacor("vermelho","frente")

para l de 0 ate 3 faca
   escreva("                                                                                        [", l, " ]","Nome: ")
   mostrarNome(0,l)
   escreva("                                                                                        Preco: R$")
   mostrarPreco(0,l)
   escreva("                                                                                        Autor: ")
   mostrarAutor(0,l)
   escreva("                                                                                        Ano de lancamento: ")
   mostrarLanc(0,l)
   escreval("                                                                                        -------------------------------------------")
   escreval
fimpara
escreval("                                                                                        [ 6 ] Ir para o carrinho")
escreval("                                                                                        Digite o numero do livro que você quer adicionar ao carrinho:")
escreval("                                                                                        Digite 4 para sair")
escreva("                                                                                        ")
leia(l)
opcao <- opcao-1
se l < 4 entao
   livraria[opcao,l].carrinho <- verdadeiro
   escreval("                                                                                        Item adicionado ao carrinho!!")
   escreva("                                                                                        Digite qualquer número para continuar: ")
   escreva("                                                                                        ")
   leia(pause)
fimse


caso 2

mudacor("branco","fundos")
mudacor("verde","frente")

para l de 0 ate 3 faca
   escreva("                                                                                        [", l, " ]","Nome: ")
   mostrarNome(1,l)
   escreva("                                                                                        Preco: R$")
   mostrarPreco(1,l)
   escreva("                                                                                        Autor: ")
   mostrarAutor(1,l)
   escreva("                                                                                        Ano de lancamento: ")
   mostrarLanc(1,l)
   escreval("                                                                                        -------------------------------------------")
   escreval
fimpara
escreval("                                                                                        [ 6 ] Ir para o carrinho")
escreval("                                                                                        Digite o numero do livro que você quer comprar:")
escreval("                                                                                        Digite 4 para sair")
escreva("                                                                                        ")
leia(l)
opcao <- opcao-1
se l < 4 entao
   livraria[opcao,l].carrinho <- verdadeiro
   escreval("                                                                                        Item adicionado ao carrinho!!")
   escreva("                                                                                        Digite qualquer número para continuar: ")
   escreva("                                                                                        ")
   leia(pause)
fimse


caso 3

mudacor("branco","fundos")
mudacor("roxo","frente")

para l de 0 ate 3 faca
   escreva("                                                                                        [", l, " ]","Nome: ")
   mostrarNome(2,l)
   escreva("                                                                                        Preco: R$")
   mostrarPreco(2,l)
   escreva("                                                                                        Autor: ")
   mostrarAutor(2,l)
   escreva("                                                                                        Ano de lancamento: ")
   mostrarLanc(2,l)
   escreval("                                                                                        -------------------------------------------")
   escreval
fimpara
escreval("                                                                                        [ 6 ] Ir para o carrinho")
escreval("                                                                                        Digite o numero do livro que você quer comprar:")
escreval("                                                                                        Digite 4 para sair")
escreva("                                                                                        ")
leia(l)
opcao <- opcao-1
se l < 4 entao
   livraria[opcao,l].carrinho <- verdadeiro
   escreval("                                                                                        Item adicionado ao carrinho!!")
   escreva("                                                                                        Digite qualquer número para continuar: ")
   escreva("                                                                                        ")
   leia(pause)
fimse

caso 4

mudacor("preto","fundos")
mudacor("branco","frente")

para l de 0 ate 3 faca
   escreva("                                                                                        [", l, " ]","Nome: ")
   mostrarNome(3,l)
   escreva("                                                                                        Preco: R$")
   mostrarPreco(3,l)
   escreva("                                                                                        Autor: ")
   mostrarAutor(3,l)
   escreva("                                                                                        Ano de lancamento: ")
   mostrarLanc(3,l)
   escreval("                                                                                        -------------------------------------------")
   escreval
fimpara
escreval("                                                                                        [ 6 ] Ir para o carrinho")
escreval("                                                                                        Digite o numero do livro que você quer comprar:")
escreval("                                                                                        Digite 4 para sair")
escreva("                                                                                        ")
leia(l)
opcao <- opcao-1
se l < 4 entao
   livraria[opcao,l].carrinho <- verdadeiro
   escreval("                                                                                        Item adicionado ao carrinho!!")
   escreva("                                                                                        Digite qualquer número para continuar: ")
   escreva("                                                                                        ")
   leia(pause)
fimse


caso 5

mudacor("amarelo","fundos")
mudacor("preto","frente")

para l de 0 ate 3 faca
   escreva("                                                                                        [", l, " ]","Nome: ")
   mostrarNome(4,l)
   escreva("                                                                                        Preco: R$")
   mostrarPreco(4,l)
   escreva("                                                                                        Autor: ")
   mostrarAutor(4,l)
   escreva("                                                                                        Ano de lancamento: ")
   mostrarLanc(4,l)
   escreval("                                                                                        -------------------------------------------")
   escreval
fimpara
escreval("                                                                                        [ 6 ] Ir para o carrinho")
escreval("                                                                                        Digite o numero do livro que você quer comprar:")
escreval("                                                                                        Digite 4 para sair")
escreva("                                                                                        ")
leia(l)
opcao <- opcao-1
se l < 4 entao
   livraria[opcao,l].carrinho <- verdadeiro
   escreval("                                                                                        Item adicionado ao carrinho!")
   escreva("                                                                                        Digite qualquer número para continuar: ")
   escreva("                                                                                        ")
   leia(pause)
fimse

outrocaso
   escreva("Opção inválida, tente novamente!!")
fimescolha
limpatela()

fimprocedimento




// procedimento para inserir sugestão de livros no catálogo.

procedimento sugestaoLivros()

var
   sair: caractere
   opcao: inteiro
inicio
   escreval("Quantos livros você quer sugerir?")
   leia(z)
   para i de 0 ate z-1 faca
      escreval("Qual o nome do livro:")
      leia(livrosSugeridos[z].nome)
      escreval("Qual o nome do autor:")
      leia(livrosSugeridos[z].autor)
      escreval("Qual o gênero do livro:")
      leia(livrosSugeridos[z].genero)
   fimpara

   escreval("Agradecemos a sua sugestão, em breve o adicionaremos no catálogo!")
   escreval("Digite 6 para ver a lista de livros sugeridos:")
   leia(opcao)
   se opcao = 6 entao
      mostrarListaSugestaoLivros()
      escreval("Agradecemos a sua sugestão, em breve o adicionaremos no catálogo!")
      escreval("Digite qualquer letra para voltar:")
      leia(sair)
   senao
      escreval("Digite qualquer letra para voltar")
      leia(sair)
   fimse


fimprocedimento

// procedimento mostrar vetores

procedimento mostrarNomeLivroSugerido()
inicio
   escreval(livrosSugeridos[z].nome)
fimprocedimento

procedimento mostrarAutorLivroSugerido()
inicio
   escreval(livrosSugeridos[z].autor)
fimprocedimento

procedimento mostrarGeneroLivroSugerido()
inicio
   escreval(livrosSugeridos[z].genero)
fimprocedimento

// procedimento de mostrar os livros sugeridos

procedimento mostrarListaSugestaoLivros()
var
   pause: inteiro
inicio

   para i de 0 ate z-1 faca
      escreva("Nome:")
      mostrarNomeLivroSugerido()
      escreva("Autor:")
      mostrarAutorLivroSugerido()
      escreva("Genero:")
      mostrarGeneroLivroSugerido()
      escreva(pause)
   fimpara
fimprocedimento

// prcocedimento adicionar ao carrinho
procedimento adicionarAoCarrinho()
var
   genero, livro, pause: inteiro
inicio

   escreval("                                                                                        Digite o código do livro. O primeiro e o último dígito separados:")
   escreva("                                                                                        ")
   leia(genero)
   escreva("                                                                                        ")
   leia(livro)
   livraria[genero,livro].carrinho <- verdadeiro
   escreval("                                                                                        Item adicionado ao carrinho!")
   escreva(pause)
fimprocedimento


// procedimento retirarCarrinho

procedimento retirarCarrinho()
var
   l, k: inteiro
inicio
   escreval("                                                     Digite o código do livro para tirar do carrinho, colocando em ordem o primeiro e depois o segundo número:")
   escreva("                                                                                        ")
   leia(l)
   escreva("                                                                                        ")
   leia(k)
   livraria[l,k].carrinho <- falso
fimprocedimento


// procedimento mostrarCarrinho
procedimento mostrarCarrinho()
var
   l,k, pause,opcao, sair: inteiro

inicio
   limpatela
   para l de 0 ate 4 faca
      para k de 0 ate 3 faca
         se (livraria[l,k].carrinho) entao
            escreval("                                                                                        -----------------------------------------------")
            escreval("                                                                                        ID do livro: ", l, k)
            escreva("                                                                                        Nome: ")
            mostrarNome(l,k)
            escreva("                                                                                        Preco: R$")
            mostrarPreco(l,k)
            escreva("                                                                                        Autor: ")
            mostrarAutor(l,k)
            escreva("                                                                                        Ano de lancamento: ")
            mostrarLanc(l,k)
            escreval("                                                                                        -----------------------------------------------")
            valorTotal <- livraria[l,k].preco + valorTotal
            escreval
            escreval
         fimse
      fimpara
   fimpara
   escreval
   escreval
   escreval("                                                                                        Valor total: R$",valorTotal,",00")
   escreval("                                                                                        Digite 1 para finalizar a compra:")
   escreval("                                                                                        Digite 0 para retirar algum livro do carrinho:")
   escreval("                                                                                        Digite qualquer número além de 0 para retornar: ")

   escreva("                                                                                        ")
   leia(pause)
   escolha pause
   caso 0
      retirarCarrinho()
   caso 1
      limpatela
      escreval("                                                                                        O valor total é igual a R$ ", valorTotal)
      escreval("                                                                                        Digite sua forma de pagamento:")
      escreval("                                                                                        [1]Pix")
      escreval("                                                                                        [2]Cartão")
      escreva("                                                                                        ")
      leia(opcao)
      escolha (opcao)
      caso 1
         escreval("                                                                                        Certo, agradecemos a sua visita virtual em nosso site!")
         escreval("                                                                                        Digite 9 para sugerir livros:")
         leia(opcao)
         se opcao = 9 entao
            sugestaoLivros()
         senao
            escreva("                                                                                        Digite qualquer número para sair: ")
            leia(sair)
         fimse
      caso 2
         escreval("                                                                                        Certo, agradecemos a sua visita virtual em nosso site!")
         escreval("                                                                                        Digite 9 para sugerir livros:")
         leia(opcao)
         se opcao = 9 entao
            sugestaoLivros()
         senao
            escreva("                                                                                        Digite qualquer número para sair: ")
            leia(sair)
         fimse
         escreva("                                                                                        Digite qualquer número para sair: ")
         escreval("                                                                                        Digite 9 para sugerir livros:")
         leia(sair)
      fimescolha
   outrocaso

      limpatela()
   fimescolha

   valorTotal <- 0
fimprocedimento


// procedimento menuInicial
procedimento menuInicial()
var
   opcao: inteiro
inicio
   limpatela
   repita
      tela()
      escreval("                                                                                        [1]Procurar livros por gênero")
      escreval("                                                                                        [2]Mostrar todos os livros")
      escreval("                                                                                        [3]Mostrar carrinho")
      escreval("                                                                                        [4]Sair")
      escreval
      escreval("                                                                                        Digite sua opção:")
      escreva("                                                                                        ")
      leia(opcao)
      escolha opcao

      caso 1
         livrosDoGenero()

      caso 2
         mostrarCatalogoCompleto()
         adicionarAoCarrinho()
         limpatela()

      caso 3
         mostrarCarrinho()
         limpatela()

      fimescolha

   ate opcao=4

fimprocedimento

// procedimento menu
procedimento menu()
inicio
   livrosPadrao()
   escreval
   menuInicial()
fimprocedimento



// bloco principal
Inicio
   menu()


Fimalgoritmo