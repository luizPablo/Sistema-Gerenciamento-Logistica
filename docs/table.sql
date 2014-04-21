CREATE TABLE produto(
	codproduto int not null,
	peso decimal(12,4) not null,
	volume decimal(12,4) not null,
	descricao varchar(500),
	primary key(codproduto)
);

CREATE TABLE endereco(
	codendereco int not null,
	codentrega int not null,
	endereco varchar(100) not null,
	primary key(codendereco),
	foreign key(codentrega) references entrega(codentrega)
);

CREATE TABLE requisicao(
	codrequisicao int not null,
	codentrega int not null,
	descricao varchar(500),
	status varchar(500),
	primary key(codrequisicao),
	foreign key(codentrega) references entrega(codentrega)
);

CREATE TABLE historicoalteracao(
	codalteracao int not null,
	codentrega int not null,
	alteracao varchar(500),
	primary key (codalteracao),
	foreign key(codentrega)  references entrega(codentrega)
);

CREATE TABLE entrega(
	codentrega int not null,
	codproduto int not null,
	horadesaida	timestamp not null,
	horadechegada timestamp,
	trajeto varchar(300),
	qtproduto int not null,
	anotacoes varchar(500),
	primary key(codentrega),
	foreign key(codproduto) references produto(codproduto)
);

CREATE TABLE acesso(
	codacesso int not null,
	primary key (codacesso)	
);

CREATE TABLE acesofuncionario(
	codacessofunc int not null,
	codacesso int not null,
	tipoconta char not null,
	usuario varchar(50),
	senha varchar(10),
	primary key
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
