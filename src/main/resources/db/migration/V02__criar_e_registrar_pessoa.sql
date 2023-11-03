CREATE TABLE pessoa (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN,
	logradouro VARCHAR(50),
	numero VARCHAR(10),
	complemento VARCHAR(50),
	bairro VARCHAR(50),
	cep VARCHAR(10),
	cidade VARCHAR(30),
	estado VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Maria', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro,  cep, cidade, estado) values ('Jose', true, 'rua tuim', '25', null, 'Vila Triangulo',  '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Carlos', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Manoel', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Felipe', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('José', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Andréia', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Carla', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Carmem', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Cida', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João', true, 'rua tuim', '25', null, 'Vila Triangulo', '86702698', 'Londrina', 'Paraná');
