# 💻 Projeto de Banco de Dados - Modelos Conceituais e Lógicos

Projeto desenvolvido para a disciplina Projeto Banco de Dados do 3 período de ADS, onde trabalhamos com modelos conceituais e lógicos para representar e analisar um sistema de gerenciamento de clientes e pedidos.

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
