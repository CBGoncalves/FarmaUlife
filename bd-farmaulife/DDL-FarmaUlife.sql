-- DDL FarmaUlife

-- CREATE - CRIA BANDO DE DADOS
CREATE DATABASE FarmaUlife; -- criando banco de dados FarmaUlife

USE FarmaUlife; -- define qual banco sera usado

-- CREATES - CRIA AS TABELAS NO BANCO E DEFINE SEUS ATRIBUTOS

CREATE TABLE Administrador ( -- cria tabela Administrador e define seus atributos
	idAdmin    INT AUTO_INCREMENT,
    nomeAdmin  VARCHAR(25) NOT NULL,
    emailAdmin VARCHAR(50) NOT NULL,
    senhaAdmin VARCHAR(25) NOT NULL,
    PRIMARY KEY IDENTITY (idAdmin)
);

CREATE TABLE Atendente ( -- cria tabela Atendente e define seus atributos
	idAtendente 	   INT AUTO_INCREMENT,
    nomeAtendente 	   VARCHAR(25) NOT NULL,
    sobrenomeAtendente VARCHAR(25) NOT NULL,
    emailAtendente 	   VARCHAR(50) NOT NULL,
    senhaAtendente 	   VARCHAR(25) NOT NULL,
    PRIMARY KEY IDENTITY (idAtendente)
);



CREATE TABLE Produto ( -- cria tabela Produto e define seus atributos
	idProduto 	 INT AUTO_INCREMENT,
    nomeProduto  VARCHAR(50) NOT NULL,
    valorProduto DOUBLE NOT NULL,
    tipoProduto  VARCHAR(25) NOT NULL,
    PRIMARY KEY IDENTITY (idProduto)
);

CREATE TABLE Venda ( -- cria tabela Venda e define seus atributos
	idVenda 		 INT AUTO_INCREMENT,
    valorTotalVenda  DOUBLE,
    dataVenda 		 DATE,
    nomeCliente 	 VARCHAR(25) NOT NULL,
    sobrenomeCliente VARCHAR(25) NOT NULL,
    cpf 			 VARCHAR(25) NOT NULL,
    idProduto 		 INT,
    PRIMARY KEY IDENTITY (idVenda),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);