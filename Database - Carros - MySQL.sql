-- criando um database
CREATE DATABASE carros;

USE carros;

-- criando a tabela de marcas dos carros
CREATE TABLE marcas (
    id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(25) NOT NULL,
    PRIMARY KEY (id)
);

-- acrescentando a coluna para a origem da marca
ALTER TABLE marcas ADD origem_marca VARCHAR(25); 

-- criando a tabela de inventario
CREATE TABLE inventario (
    id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(50) NOT NULL,
    transmissão VARCHAR(25) NOT NULL,
    motor VARCHAR(50) NOT NULL,
    combustivel VARCHAR(25) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
	);
   
-- criando a tabela de cliente
CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    endereco VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);

-- inserindo dados nas tabelas
INSERT INTO clientes (nome, sobrenome, endereco)
VALUES 
    ('Murilo', 'Nunes', 'Rua 1'),
    ('Luiz', 'Paz', 'Rua 2'),
    ('Kaik', 'Caprioglio', 'Rua 3'),
    ('Eliseu', 'Martins', 'Rua 4'),
    ('Eduardo', 'Rei', 'Rua 5');
    
INSERT INTO marcas (nome_marca, origem_marca)
VALUES
    ('Chevrolet', 'Estados Unidos'),
    ('Fiat', 'Italia'),
    ('Hyundai', 'Coreia do Sul'),
    ('Toyota', 'Japao'),
    ('Volkswagen', 'Alemanha');
 
INSERT INTO inventario (modelo, transmissão, motor, combustivel, marcas_id) 
VALUES
    ('Opala SS', 'Manual', '4.1', 'Gasolina', 1),   -- Chevrolet
    ('Uno', 'Manual', '1.0 Fire', 'Flex', 2),       -- Fiat
    ('HB20', 'Automático', '1.0 TGDI', 'Gasolina', 3),    -- Hyundai
    ('Corolla', 'Automático', '2.0 Dynamic Force', 'Flex', 4), -- Toyota
    ('Polo', 'Automático', '1.0 TSI', 'Flex', 5);         -- Volkswagen

-- validando tabelas
select * from marcas;
select * from inventario;
select * from clientes;

-- Comando para listar os modelos de veiculos com informações da marca
SELECT
  i.modelo,
  i.transmissão,
  i.motor,
  i.combustivel,
  m.nome_marca,
  m.origem_marca
FROM
  inventario i
JOIN
  marcas m ON i.marcas_id = m.id;
