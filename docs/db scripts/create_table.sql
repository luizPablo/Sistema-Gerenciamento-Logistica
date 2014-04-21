CREATE TABLE produto(
	codproduto int not null,
	peso decimal(12,4) not null,
	volume decimal(12,4) not null,
	descricao varchar(500),
	primary key(codproduto)
);

CREATE TABLE endereco(
	codendereco int not null,
	endereco varchar(100) not null,
	primary key(codendereco)
);

CREATE TABLE entrega(
	codentrega int not null,
	codproduto int not null,
	codendsaida int not null,
	codendentrega int not null,
	horadesaida	timestamp not null,
	horadechegada timestamp,
	trajeto varchar(300),
	qtproduto int not null,
	anotacoes varchar(500),
	primary key(codentrega),
	foreign key(codproduto) references produto(codproduto),
	foreign key(codendsaida) references endereco(codendereco),
	foreign key(codendentrega) references endereco(codendereco)
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

CREATE TABLE acesso(
	codacesso int not null,
	primary key (codacesso)
);

CREATE TABLE acessofuncionario(
	codacessofunc int not null,
	codacesso int not null,
	tipoconta char not null,
	usuario varchar(50),
	senha varchar(10),
	primary key(codacessofunc)
);

CREATE TABLE acentrega(
	codentrega int not null,
	codacessofunc int not null,	
	primary key(codentrega, codacessofunc),
	foreign key(codacessofunc) references acessofuncionario(codacessofunc),
	foreign key(codentrega) references entrega(codentrega)
);

CREATE TABLE historicoacesso(
	codhistorico int not null,
	codacesso int not null,
	horadeentrada int not null, 
	horadesaida int,
	primary key(codhistorico),
	foreign key(codacesso) references acesso(codacesso)
);

CREATE TABLE cliente(
	codcliente int not null,
	codacesso int not null,
	nome varchar(100) not null,
	usuario varchar(50) not null,
	senha varchar(50) not null,
	primary key(codcliente),
	foreign key(codacesso) references acesso(codacesso)
);

CREATE TABLE telefone(
	telefone int not null,
	codcliente int not null,
	primary key(telefone),
	foreign key(codcliente) references cliente(codcliente)
);

CREATE TABLE email(
	email varchar(100) not null,
	codcliente int not null,
	primary key(email),
	foreign key(codcliente) references cliente(codcliente)
);
