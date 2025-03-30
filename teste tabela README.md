# 💻 Desenvolvimento para dispositivos móveis - Modelos Conceituais, Lógicos e Físicos 

Projeto desenvolvido para a disciplina de "Desenvolvimento para dispositivos móveis" do 3 período de ADS, onde trabalhamos com modelos conceituais, lógicos e físicos para representar e analisar um sistema de gerenciamento de clientes e pedidos.

## 🙋 Equipe

- **Angelo Santos** - Matrícula: 01707596
- **Eduardo Henrique** - Matrícula: 01706530
- **Euclides Neto** - Matrícula: 01696172
- **Gabriel Teixeira** - Matrícula: 01413025
- **Ingrid Larissa** - Matrícula: 01552364
- **Klebson Apolinário** - Matrícula: 01704173
- **Samara Jovino** - Matrícula: 01711332

## 🔍 Modelo Conceitual

O modelo conceitual foi desenvolvido para representar as entidades e seus relacionamentos no sistema. Abaixo está uma breve descrição das entidades principais:

- **Cliente**: Armazena informações como nome, CPF, telefone, email e endereço.
- **Endereco**: Contém detalhes do endereço do cliente.
- **Pedido**: Registra os pedidos feitos pelos clientes, incluindo detalhes de pagamento.
- **Produto**: Contém informações sobre os produtos disponíveis, como nome, preço e estoque.

### ➰ Relacionamentos

- **Cliente-Endereco**: Cada cliente possui um endereço associado.
- **Cliente-Pedido**: Um cliente pode fazer vários pedidos, mas cada pedido está associado a um único cliente.
- **Pedido-Endereco**: Cada pedido está associado a um endereço de entrega.
- **Pedido-Produto**: Um pedido pode conter vários produtos, e um produto pode estar em vários pedidos.

## 📝 Modelo Lógico

O modelo lógico foi criado com base no modelo conceitual, definindo as tabelas e colunas que serão implementadas no banco de dados. As tabelas principais incluem:

- **Cliente**: `ClientelD (PrimaryKey)`, `Nome`, `CPF`, `Telefone`, `Email`, `EnderecoID(ForeignKey)`
- **Endereco**: `EnderecoID (PrimaryKey)`, `CEP`, `ClientelD (ForeignKey)`
- **Pedido**: `RedidoID (PrimaryKey)`, `ClientelD (ForeignKey)`, `EnderecoID (ForeignKey)`, `ProdutoID (ForeignKey)`,  `Pagamento`
- **Produto**: `ProdutoID (PrimaryKey)`, `Nome`, `Preco`, `Estoque`

## ⚙ Modelo Físico 

O modelo físico traduz o modelo lógico em uma estrutura mais concreta e detalhada de dados que será implementada no sistema de banco de dados, garantindo uma representação mais fiel.
Segue exemplo abaixo:

-**Cliente**: `ClienteID INT PRIMARY KEY AUTO_INCREMENT`, `Nome VARCHAR(100) NOT NULL`, `CPF CHAR(11) UNIQUE NOT NULL`, `Telefone VARCHAR(15)`, `Email VARCHAR(100) UNIQUE`, `EnderecoID INT`, `FOREIGN KEY (EnderecoID) REFERENCES Endereco(EnderecoID)`
-**Endereco**: `EnderecoID INT PRIMARY KEY AUTO_INCREMENT`, `CEP CHAR(8) NOT NULL`, `ClienteID INT`, `FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)`
-**Pedido**: `ProdutoID INT PRIMARY KEY AUTO_INCREMENT`, `Nome VARCHAR(100) NOT NULL`, `Preco DECIMAL(10,2) NOT NULL`, `Estoque INT NOT NULL`
-**Produto**: `PedidoID INT PRIMARY KEY AUTO_INCREMENT`, `ClienteID INT NOT NULL`, `EnderecoID INT NOT NULL`, `Pagamento VARCHAR(50) NOT NULL`, `FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)`, `FOREIGN KEY (EnderecoID) REFERENCES Endereco(EnderecoID)`

## 🔗 Links

- **Modelo Conceitual** : https://app.brmodeloweb.com/#!/publicview/67d4b21550a65ecc6d275028
- **Modelo Lógico** : https://app.brmodeloweb.com/#!/publicview/67de179ea403760776b15254
- **Modelo Físico** : 
OBS.: Os modelos também estão em PDF no repositório! 😊
