CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(150),
    data_cad TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE animais (
    id SERIAL PRIMARY KEY,
    id_cliente INTEGER NOT NULL REFERENCES clientes(id),
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(20) NOT NULL,
    raca VARCHAR(30) NOT NULL,
    data_nasc INTEGER NOT NULL,
    data_cad TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE consultas (
    id SERIAL PRIMARY KEY,
    id_animal INTEGER NOT NULL REFERENCES animais(id),
    data_consulta DATE NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    data_cad TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO clientes (nome, telefone, email) VALUES ('Felipe', '1940028922', 'felipe@gmail.com');
INSERT INTO clientes (nome, telefone, email) VALUES ('Eduardo', '1989228922', 'eduardo@gmail.com');
INSERT INTO clientes (nome, telefone, email) VALUES ('Claudio', '1989224002', 'claudio@gmail.com');
INSERT INTO clientes (nome, telefone, email) VALUES ('Maria', '1989890101', 'maria@gmail.com');
INSERT INTO clientes (nome, telefone, email) VALUES ('Pedro', '1966776677', 'pedro@gmail.com');

INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (1, 'Duque', 'Cachorro', 'Shi-tzu', 10);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (1, 'Steel Horse I', 'Cavalo', 'Puro-Sangue Árabe', 8);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (1, 'Steel Horse II', 'Cavalo', 'Puro-Sangue Inglês', 5);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (1, 'Steel Horse III', 'Cavalo', 'Morgan', 8);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (1, 'Steel Horse IV', 'Cavalo', 'Shire', 12);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (2, 'Don Cacon I', 'Gato', 'Bombay', 14);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (5, 'Lili', 'Cachorro', 'Pinscher', 13);
INSERT INTO animais (id_cliente, nome, especie, raca, data_nasc) VALUES (1, 'Steel Horse V', 'Cavalo', 'Puro-Sangue Litusiano', 9);

INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (6, '10/20/2009', 'Banho e tosa');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (12, '03/08/2007', 'Ração');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (10, '01/02/2012', 'Escovação');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (14, '10/20/2009', 'Escovação');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (9, '06/09/2019', 'Check-up');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (6, '10/20/2009', 'Observação');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (8, '10/20/2009', 'Banho');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (11, '10/20/2009', 'Check-up');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (6, '10/20/2009', 'Resenha');
INSERT INTO consultas (id_animal, data_consulta, descricao) VALUES (14, '10/20/2009', 'Resenha');

SELECT * FROM consultas ORDER BY data_consulta ASC;