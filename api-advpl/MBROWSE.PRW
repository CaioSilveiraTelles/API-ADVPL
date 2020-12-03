#include 'protheus.ch'
#include 'parmtype.ch'
#include "rwmake.ch"
#INCLUDE "TOPCONN.CH"


USER FUNCTION mBrwSZ1()
//Criação do mwbrowser
	LOCAL cAlias := "SZ1"

	PRIVATE cCadastro := "CADASTROS DE FUNCIONARIOS"

	PRIVATE aRotina     := { }

	AADD(aRotina, { "Pesquisar"     ,"AxPesqui",     0, 1 })

	AADD(aRotina, { "Visualizar"    ,"U_oPTIONS",     0, 2 })

	AADD(aRotina, { "Incluir"       ,"U_oPTIONS",     0, 3 })

	AADD(aRotina, { "Alterar"       ,"U_oPTIONS",     0, 4 })

	AADD(aRotina, { "Excluir"       ,"U_Delet01",     0, 5 })

	dbselectarea(cAlias)
	dbsetorder(1)
	mBrowse(6, 1, 22, 75, cAlias)

RETURN

//FUNÇÃO(oPTIONS) PARA CHAMAR AS AÇOES Pesquisar,Visualizar,Incluir.Alterar e Excluir 
User Function oPTIONS(cAlias,nREG,nOpcao)
	
	DO CASE
	 	CASE nOpcao == 2 //VISUALIZAR
			 u_MyFunction(cAlias,nREG,nOpcao)
	

	 	CASE nOpcao == 3 //INCLUIR
		 	nREADONLY:= .T.
			u_MyFunction(cAlias,nREG,nOpcao)
		
	 	CASE 	nOpcao == 4 //ALTERAR
		 	nREADONLY:=.T.
			u_MyFunction(cAlias,nREG,nOpcao)

		CASE nOpcao == 5 //DELETAR
			U_Delet01(cAlias,nREG,nOpcao)
		
		OTHERWISE
	ENDCASE
RETURN


