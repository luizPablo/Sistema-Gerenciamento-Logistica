CREATE TABLE produto(
	codproduto int not null,
	peso decimal(12,4) not null,
	volume decimal(12,4) not null,
	descricao varchar(500)
	primary key(codproduto)
);

CREATE TABLE endereco(
	codendereco int,
	codentrega int,
	endereco varchar(100) not null,
	primary key(codendereco),
	foreign key(codentrega) references entrega(codentrega)
);

CREATE TABLE requisicao(
	codrequisicao
	codentrega
	descricao
	status
);

CREATE TABLE historicoalteracao(
	codalteracao
	codentrega
	alteracao
);

CREATE TABLE entrega(
	codentrega int not null,
	codproduto int not null,
	horadesaida	timestamp not null,
	horadechegada timestamp,
	trajeto int,
	qtproduto int not null,
	anotacoes varchar(500),
	primary key(codentrega),
	foreign key(codproduto) references produto(codproduto)
);

CREATE TABLE acesso(
	codacesso
);

CREATE TABLE acesofuncionario(
	codacessofunc
	codacesso
	tipoconta
	usuario
	senha
);

CREATE TABLE acentrega(
	codhistorico
	codacesso
);

CREATE TABLE historicoacesso(
	codhistorico
	codacesso
	horadeentrada
	horadesaida
);

CREATE TABLE cliente(
	codcliente
	codacesso
	nome
	usuario
	senha
);

CREATE TABLE telefone(
	telefone
	codcliente
);

CREATE TABLE email(
	email
	codcliente
);