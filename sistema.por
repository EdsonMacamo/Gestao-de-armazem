programa
{
	inclua biblioteca Arquivos --> a
	inclua biblioteca Calendario --> c
	funcao inicio()
	{
	cadeia user
	inteiro senha
	escreva("==========================\n")
	escreva("===== LOGIN DO SISTEMA =====\n")
	escreva("DIGITE O SEU USER\n")
	leia(user)
	escreva("DIGITE A SUA SENHA\n")
	leia(senha)
	login(user, senha)

	
	}
	 funcao login(cadeia user,inteiro senha){

	 	se(user == "admin" e senha == 123){
	 		menu()
	 	}senao se (user == "gest" e senha == 1234){
	 		menuGest()
	 	}

	 	
	 }

	 funcao menuGest(){
	inteiro men
		escreva("=======================================\n")
		escreva("================MENU DO SISTEMA==============\n")
		escreva("DIGITE 1- PARA LISTAR PRODUTOS\n")
		escreva("DIGITE 2- PARA LISTAR FORNECEDORES\n")
		escreva("=======================================\n")
		leia(men)
	 	escolha (men)	
		{
			caso 1: 
				 leituradeprodutos()
				 menuGest()
		 		pare   
		 	caso 2: 
		 		listarFornecedores()
		 		menuGest()
		 		pare   
		 	
		 	caso contrario: 
		 		escreva ("Opção Inválida !")
		}
	 }
	 
	funcao menu(){
		inteiro men
		escreva("=======================================\n")
		escreva("================MENU DO SISTEMA==============\n")
		escreva("DIGITE 1- PARA CADASTRAR PRODUTOS\n")
		escreva("DIGITE 2- PARA LISTAR PRODUTOS\n")
		escreva("DIGITE 3- PARA CADASTRAR FORNECEDORES\n")
		escreva("DIGITE 4- PARA LISTAR FORNECEDORES\n")
		escreva("=======================================\n")
		leia(men)
		
		escolha (men)	
		{
			caso 1: 
		 		menuarmazem()
		 		menu()
		 		pare   
		 	caso 2: 
		 	menuListarArma()
		 	menu()
		 		pare   
		 	caso 3: 
		 		cadastroDeFornecedores()
		 		menu()
		 		pare
		 		caso 4:
		 		listarFornecedores()
		 		menu()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !")
		}
		
	}
	funcao menuListarArma(){
		inteiro n
		escreva("===============SELECIONE O ARMAZEM ==============\n")
		escreva("DIGITE 1- PRA LISTAR  ARMAZEM MAPUTO\n")
		escreva("DIGITE 2- PARA LISTAR  ARMAZEM MATOLA\n")
		escreva("===========================================\n")
		leia(n)
		escolha (n)	
		{
			caso 1: 
		 	leituradeprodutos()
		 		pare  
		 	caso 2: 
			listarprod2()
		 		pare   
		 	
		 	caso contrario:
		 		escreva ("Opção Inválida !")
		}
	}

	funcao menuarmazem(){
		inteiro armazem
		escreva("================MENU ARMAZEM==============\n")
		escreva("DIGITE 1- PRA ARMAZEM MAPUTO\n")
		escreva("DIGITE 2- PARA ARMAZEM MATOLA\n")
		escreva("===========================================\n")
		leia(armazem)
			
		escolha (armazem)	
		{
			caso 1: 
		 	registarprodutos()
		 		pare  
		 	caso 2: 
			 registarProdutos2()
		 		pare   
		 	
		 	caso contrario:
		 		escreva ("Opção Inválida !")
		}
	}

//Funcao de cadastro de produtos
	funcao registarprodutos(){
	cadeia nome,tipo,cadegoria,quantidade,datadeValidade,dataRegisto


		
	escreva("DIGITE O NOME DO PRODUTO\n")
	leia(nome)
	escreva("DIGITE O TIPO DO PRODUTO\n")
	leia(tipo)
	escreva("DIGITE O CATEGORIA DO PRODUTO\n")
	leia(cadegoria)
	escreva("DIGITE O QUANTIDAE DO PRODUTO\n")
	leia(quantidade)
	escreva("DIGITE O DATA DE VALIDADE DO PRODUTO\n")
	leia(datadeValidade)
	inteiro dia,mes,ano
	dia = c.dia_mes_atual()
	mes = c.mes_atual()
	ano = c.ano_atual()
	dataRegisto = dia +"/" + mes +"/" + ano+"/"
	cadeia produtos = " |" + nome + " | " + tipo + " | " + cadegoria + " | " + quantidade + " | " + datadeValidade + " |" + dataRegisto +"|"

	inteiro endereco = a.abrir_arquivo("produtos.txt", a.MODO_ACRESCENTAR)
		a.escrever_linha(produtos, endereco)

	a.fechar_arquivo(endereco)
		
	}

	funcao registarProdutos2(){
	
	cadeia nome,tipo,cadegoria,quantidade,datadeValidade,dataRegisto


		
	escreva("DIGITE O NOME DO PRODUTO\n")
	leia(nome)
	escreva("DIGITE O TIPO DO PRODUTO\n")
	leia(tipo)
	escreva("DIGITE O CATEGORIA DO PRODUTO\n")
	leia(cadegoria)
	escreva("DIGITE O QUANTIDAE DO PRODUTO\n")
	leia(quantidade)
	escreva("DIGITE O DATA DE VALIDADE DO PRODUTO\n")
	leia(datadeValidade)
	inteiro dia,mes,ano
	dia = c.dia_mes_atual()
	mes = c.mes_atual()
	ano = c.ano_atual()
	dataRegisto = dia +"/" + mes +"/" + ano+"/"
	cadeia produtos = " |" + nome + " | " + tipo + " | " + cadegoria + " | " + quantidade + " | " + datadeValidade + " |" + dataRegisto +"|"

	inteiro endereco = a.abrir_arquivo("produtos2.txt", a.MODO_ACRESCENTAR)
		a.escrever_linha(produtos, endereco)
		a.fechar_arquivo(endereco)
	}
	// funcao de leitura de produtos

	funcao leituradeprodutos(){
		escreva("--------------------------------------\n")
		escreva("  Nome prod | Tipo Porod | Categoria | Quantidade | Data Vaidade|\n")
		escreva("-----------------------------------------\n")
		
		cadeia caminho_do_arquivo = "produtos.txt"
		
		inteiro arquivo_placar = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)
		cadeia linha = ""
		inteiro numero_da_linha = 0
		enquanto (nao a.fim_arquivo(arquivo_placar))
		{
			
			numero_da_linha = numero_da_linha + 1

		
			linha = a.ler_linha(arquivo_placar)					

			
			escreva("",  numero_da_linha, ": ", linha, "\n")		


		}
	}
  funcao listarprod2(){
	
  	escreva("--------------------------------------\n")
		escreva("  Nome prod | Tipo Porod | Categoria | Quantidade | Data Vaidade|\n")
		escreva("-----------------------------------------\n")
		
		cadeia caminho_do_arquivo = "produtos2.txt"
		
		inteiro arquivo_placar = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)
		cadeia linha = ""
		inteiro numero_da_linha = 0
		enquanto (nao a.fim_arquivo(arquivo_placar))
		{
			
			numero_da_linha = numero_da_linha + 1

		
			linha = a.ler_linha(arquivo_placar)					

			
			escreva("",  numero_da_linha, ": ", linha, "\n")		

	
		}
  }

 	funcao cadastroDeFornecedores(){
	cadeia nome,apelido,nuit,bairro,dataCadastro
	escreva("DIGITE O NOME DO FORNECEDOR\n")
	leia(nome)
	escreva("DIGITE O APELIDO DO FORNECEDOR\n")
	leia(apelido)
	escreva("DIGITE O NUIT DO FORNECEDOR\n")
	leia(nuit)
	escreva("DIGITE O BAIRRO DO FORNECEDOR\n")
	leia(bairro)
	
	cadeia fornecedor = "|" + nome + "|" + apelido + "|" + nuit + "|" + bairro + "|" 		
	inteiro endereco = a.abrir_arquivo("fornecedores.txt", a.MODO_ACRESCENTAR)
		a.escrever_linha(fornecedor, endereco)
	a.fechar_arquivo(endereco)
 	}
	funcao listarFornecedores(){
		escreva("--------------------------------------\n")
		escreva("    Nome  | Apelido | Nuit| Bairo | \n")
		escreva("-----------------------------------------\n")
		cadeia caminho_do_arquivo = "fornecedores.txt"
		
		inteiro arquivo_placar = a.abrir_arquivo(caminho_do_arquivo, a.MODO_LEITURA)
		cadeia linha = ""
		inteiro numero_da_linha = 0
		enquanto (nao a.fim_arquivo(arquivo_placar))
		{
			
			numero_da_linha = numero_da_linha + 1

		
			linha = a.ler_linha(arquivo_placar)					

			
			escreva( numero_da_linha, ": ", linha, "\n")		

	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */