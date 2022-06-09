-- DML FarmaUlife

USE FarmaUlife; -- define qual banco sera usado

-- INSERTS - INSERINDO DADOS NAS TABELAS

INSERT INTO Administrador (nomeAdmin, emailAdmin, senhaAdmin) -- insere dados na tabela Administrador
VALUES ('admin','admin@email.com','admin1234');

INSERT INTO Atendente (nomeAtendente, sobrenomeAtendente, emailAtendente, senhaAtendente) -- insere dados na tabela Atendente
VALUES ('Marcelo','Souza','marcelo@email.com','marcelo1234'),
	   ('Carlos','Silva','carlos@email.com','carlos1234'),
       ('Thais','Santos','guilherme@email.com','guilherme1234'),
       ('Viviane','Teixeira','gustavo@email.com','gustavo1234');
       
       
INSERT INTO Produto (nomeProduto, valorProduto, tipoProduto) -- insere dados na tabela Produto
VALUES ('Lenço Umedecido',10.90,'Higiene Pessoal'),
	   ('Paracetamol',30.50,'Medicamento'),
       ('Amoxilina',8.90,'Medicamento'),
       ('Caixa de Band-Aid',5.00,'Primeiros Socorros'),
       ('Cefprozil',15.00,'Medicamento'),
       ('Pantoprazol',25.00,'Medicamento'),
       ('Shampoo',34.90,'Higiene Pessoal');
       
INSERT INTO Venda (valorTotalVenda, dataVenda, nomeCliente, sobrenomeCliente, cpf, idProduto) -- insere dados na tabela Venda
VALUES (12.90,'2022-05-30','Marcelo','Souza','46778639876',1),
	   (20.50,'2022-05-28','Carlos','Santos','40968765789',5),
       (50.90,'2022-06-07','Guilherme','Ferreina','40976788765',4),
       (36.00,'2022-05-25','Renata','Teixeira','40987689766',3),
       (27.00,'2022-06-04','Matheus','Nogueira','49876782314',7),
       (26.00,'2022-06-02','Julia','Medeiros','43267866789',6),
       (70.90,'2022-05-21','Luana','Menezes','468554256765',2);

-- SELECTS - LISTANDO TODOS OS DADOS DAS TABELAS

SELECT * FROM Administrador; -- lista dados da tabela Administrador 
SELECT * FROM Atendente;	 -- lista dados da tabela Atendente
SELECT * FROM Produto;		 -- lista dados da tabela Produto
SELECT * FROM Venda;		 -- lista dados da tabela Venda

-- TRUNCATES - EXCLUI TODOS OS DADOS LIMPANDO AS TABELAS

TRUNCATE TABLE Administrador; -- limpa tabela Administrador
TRUNCATE TABLE Atendente;	  -- lista dados da tabela Atendete
TRUNCATE TABLE Produto;		  -- lista dados da tabela Produto
TRUNCATE TABLE Venda;		  -- lista dados da tabela Venda

       
       