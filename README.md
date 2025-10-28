# <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" height="40" alt="mysql logo"  /> Primeiro Banco de Dados - MySQL

Este projeto simula um sistema simples de controle de inventário de veículos, com base de dados modelada em **MySQL**. Armazenando informações como: marcas de carros, seus modelos, e os dados de clientes cadastrados. 

## 🧱 Estrutura do Banco

O banco de dados é chamado `carros` e possui três tabelas principais:

- **marcas**: Armazena informações sobre as fabricantes dos veículos.
- **inventario**: Contém os modelos disponíveis, ligados a uma marca.
- **clientes**: Cadastro de clientes do sistema.

### 🔗 Relacionamentos

- Cada veículo no `inventario` está relacionado a uma entrada na tabela `marcas`, via chave estrangeira `marcas_id`.

## 🛠️ Tecnologias Usadas

- MySQL
- SQL padrão (DDL e DML)

## 📁 Scripts executados

- Criação do banco de dados
- Criação e alteração de tabelas
- Inserção de dados
- Consultas para validação
