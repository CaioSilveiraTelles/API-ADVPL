#INCLUDE "protheus.ch"
#INCLUDE "TopConn.ch"
#INCLUDE "TBICONN.ch"
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

user function ConvDados()
    //CARACTER TO DATA CTOD
    cData := “31/07/2001”
    dData := CTOD(cData)

    IF dDataBase >= dData
        MSGALERT(“Data do sistema fora da competência”)
    ELSE
        MSGINFO(“Data do sistema dentro da competência”)
    ENDIF

    //NUMERICO TO STRING CvalToChar
    FOR nPercorridos := 1 to 10
        MSGINFO(“Passos percorridos: ”+CvalToChar(nPercorridos))
    NEXT nPercorridos
    //STR() FAZ NUMERICO PARA STRING

    //DATA TO CARACTER DTOC
    MSGINFO(“Database do sistema: ”+DTOC(dData)

    //ADICIONA ZERO AS ESQUERDA CONFORME O PARAMETRO
    nValor:=10
    nTamanho:=3
    STRZERO(nValor, nTamanho)

    //Realiza a conversão de uma informação do tipo caracter em numérica.
    cNome:="12"
    cNome:=VAL(cNome)
    .
    //A função AADD() permite a inserção de um item em um array já existente, sendo que este
    //aitem podem ser um elemento simples, um objeto ou outro array.
    aItem := {}
    AADD(aItem   ,   "12" )
    AADD(aItem   ,   "14" )
    AADD(aItem   ,   "43" )


    //A função ASCAN() permite que seja identificada a posição do array que contém uma
    //determinada informação, através da análise de uma expressão descrita em um bloco decódigo
    aAlunos := {“Márcio”, “Denis”, “Arnaldo”, “Patrícia”}
    bSeek := {|x| x == “Denis”}
    nPosAluno := aScan(aAlunos,bSeek)

    //A função AINS() permite a inserção de um elemento no array especificado em qualquer ponto
    //da estrutura do mesmo, diferindo desta forma da função AADD() a qual sempre insere um
    //novo elemento ao final da estrutura já existente.
    aAlunos := {“Edson”, “Robson”, “Renato”, “Tatiana”}
    AINS(aAlunos,3)// Neste ponto o array aAlunos terá o seguinte conteúdo:
    // {“Edson”, “Robson”, nulo, “Renato”, “Tatiana”}



    //A função EVAL() é utilizada para avaliação direta de um bloco de código, utilizando as
    //informações disponíveis no mesmo de sua execução. Esta função permite a definição e
    //passagem de diversos parâmetros que serão considerados na interpretação do bloco de código.
    nInt := 10
    bBloco := {|N| x:= 10, y:= x*N, z:= y/(x*N)}
    nValor := EVAL(bBloco, nInt)

    //Retorna uma string sem os espaços à direita e à esquerda, referente ao conteúdo informado como parâmetro.
    //A função ALLTRIM() implementa as ações das funções RTRIM (“right trim”) e LTRIM (“lefttrim”).
    cNome := ALLTRIM(SA1->A1_NOME)
    MSGINFO(“Dados do campo A1_NOME:”+CRLF
    “Tamanho:” + CVALTOCHAR(LEN(SA1->A1_NOME))+CRLF
    “Texto:” + CVALTOCHAR(LEN(cNome)))

    //GETDTOVAL()
    //Função utilizada para retornar um numero formatado, de acordo com o valor passado por
    //parâmetro, sendo que irá apenas manter os valores numéricos contidos na string passada por
    //parâmetro, verificando se existe algum caractere '.' retornando um numero fracionário, na  ordem dos números contidos na string.

    GetDtoVal('123456') //retorno 123456.0000
    GetDtoVal('1/2/3/4/5/6') //retorno 123456.0000
    GetDtoVal('fim.123456') //retorno 0.123456
    GetDtoVal('teste') //retorno 0.0

    //Retorna uma string com todos os caracteres minúsculos, tendo como base a string passada como parâmetro.
    cName:="CAIO"
    MSGINFO("TEXTO"+LOWER(cName))

    //Função utilizada para realizar operações matemáticas com strings que contém um valor
    ///numérico. MATHC() realiza algumas operações matemáticas como: Soma, Subtração, Divisão,
    //Multiplicação e Exponenciação.
    //A função irá retornar uma string contendo o resultado da operação matemática, com uma
    //especificação de até 18 casas de precisão no numero.
    //Sintaxe: MATHC ( < cNum1 > , < cOperacao > , < cNum2 > ) Parâmetros:
