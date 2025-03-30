create database modelofisico;

CREATE TABLE cliente(
  id_cliente int primary key auto_increment,
  nome varchar(50),
  email varchar(40),
  telefone varchar(14),
  senha varchar(15),
  cpf varchar(24),
  id_endereco int
);

create table pedido(
 pedido_id int primary key auto_increment,
 quantidade int,
 pagamento varchar(50),
 cliente_id int,
 endereco_id int,
 produto_id int,
 foreign key (produto_id) references produto(id_produto)
);

create table endereco(
endereco_id int primary key auto_increment,
cep varchar(9),
cliente_id int,
FOREIGN KEY (cliente_id) REFERENCES cliente(id_cliente)
);

create table produto(
id_produto int primary key auto_increment,
nome varchar(40),
estoque int,
preco float
);

update pedido
set produto_id = '1'
where pedido_id = '1';

update pedido
set produto_id = '2'
where pedido_id = '2';

#Inserindo dados CLIENTES
 #Ex:
 
 insert into cliente (nome, email, telefone, senha, cpf, id_endereco)
 values ('Euclides Neto', 'euclidesdacunha@hotmail.com', '8194836922', 'mortandela3', '1001040002-06', '4');
 
 INSERT INTO cliente (nome, email, telefone, senha, cpf, id_endereco) 
VALUES ('Gabriel', 'gabrielteixeira@hotmail.com', '8198989989', 'mortandela1', '1001030002-00', '2');

 INSERT INTO cliente (nome, email, telefone, senha, cpf, id_endereco) 
VALUES ('Klebson', 'binho123@hotmail.com', '8198980089', 'mortandela2', '1001030002-01', '3');



#Inserindo dados PEDIDOS
#Ex:

insert into pedido (quantidade, pagamento, cliente_id, endereco_id)
values ('3', 'Debito', '3', '2');
 
 
 #Inserindo dados PRODUTOS
 #Ex:
 
insert into produto (nome, estoque, preco)
values ('VinhoCarreteiro', '392', '12.90');

insert into produto (nome, estoque, preco)
values ('Reservado', '160', '250');

DELETE FROM produto
WHERE id_produto = '3';


 #Inserindo dados ENDERECOS

insert into endereco (cep)
values ('12345-300');

#Consultas Simples
select * from cliente;
describe cliente;

select * from endereco;
describe endereco;

select * from pedido;
describe pedido;

select * from produto;
describe produto;

show tables;

#Consultas elaboradas

#Seleciona o Nome dos clientes que não fizeram pedido
select nome from cliente
where id_cliente not in (select cliente_id from pedido);

#Seleciona a quantidade de pedidos até agora
SELECT COUNT(*) AS numero_de_pedidos
FROM pedido
WHERE cliente_id < 3;

#Quantidade de produtos vendidos
SELECT pr.nome AS nome_produto, 
p.quantidade FROM pedido p
JOIN produto pr ON p.produto_id = pr.id_produto
WHERE p.pedido_id = 2;

#Listar todos os produtos com nome e preço, ordenados pelo nome:
SELECT nome, preco
FROM produto
ORDER BY nome;

#Listar os clientes que possuem um endereço em um CEP específico
SELECT c.nome, e.CEP
FROM cliente c
JOIN endereco e ON c.id_endereco = e.endereco_id
WHERE e.CEP = '12345-300';

#Listar os produtos com estoque abaixo de um determinado limite (ex: 200 unidades)
SELECT nome, estoque
FROM produto
WHERE estoque < 200;

#Mostrar o total faturado por cada produto (quantidade * preço)
SELECT pr.nome AS nome_produto, 
       SUM(p.quantidade * pr.preco) AS total_faturado
FROM pedido p
JOIN produto pr ON p.produto_id = pr.id_produto
GROUP BY pr.nome;

#Listar os pedidos com produtos acima de um determinado valor (ex: R$ 100,00)
SELECT p.pedido_id, pr.nome AS produto, pr.preco
FROM pedido p
JOIN produto pr ON p.produto_id = pr.id_produto
WHERE pr.preco > 100;

#Calcular a média de preço dos produtos
SELECT AVG(preco) AS preco_medio
FROM produto;

#Contar quantos pedidos existem para cada cliente
SELECT c.nome, COUNT(p.pedido_id) AS total_pedidos
FROM cliente c
LEFT JOIN pedido p ON c.id_cliente = p.cliente_id
GROUP BY c.id_cliente;


