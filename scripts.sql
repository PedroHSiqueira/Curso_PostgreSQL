create table cliente(
	idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,
	constraint pk_cln_idcliente primary key (idcliente)
);

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (1, 'Manuel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileiro', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'Porto União', 'SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileiro', 'Rua das limas', '200', 'AP', 'Centro', 'Poro União', 'SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

--Select Simples
select * from cliente;

--Select com seleção
select nome, data_nascimento from cliente;

--Alias
select nome, data_nascimento as "Data de nascimento" from cliente;

--Concatenação
select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;

--Limit
select * from cliente limit 3;

--Where
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

--Like 
select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

--Between
select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

--Buscando Nulo
select nome, rg from cliente where rg is null;

--Order by
select nome from cliente order by nome;

select nome from cliente order by nome desc;

--EXERCICIOS

select nome, genero, profissao from cliente order by nome desc;

select * from cliente where nome like '%r%';

select * from cliente where nome like 'C%';

select * from cliente where nome like '%a';

select * from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';

select * from cliente where complemento like 'A%';

select * from cliente where genero = 'F';

select * from cliente where cpf is null;

select nome, profissao from cliente order by profissao ;

select * from cliente where nacionalidade = 'Brasileira';

select * from cliente where numero is not null;

select * from cliente where uf = 'Santa Catarina';

select * from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

select 'Nome: ' || nome || ' Logradouro: ' || logradouro || ' Complemento: ' || complemento || ' Bairro: ' || bairro || ' Municipio: ' || municipio || ' UF: ' || UF as Dados from cliente ;

--UPDATE

update cliente set nome = 'Manoel' where idcliente = 1;

--Delete
insert into cliente (idcliente, nome) values ('16', 'Augusto');

delete from cliente where idcliente = 16;

--EXERCICIO 2

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (16,'Maicon',12349596421,1234, '1965-10-10','F','Empresario', null, null, null, null, null, 'Florianopolis','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (17,'Getulio',null,4631,null,'F','Estudante', 'Brasileira', 'Rua Central', 343, 'Apartamento', 'Centro', 'Curitiba','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (18,'Sandra',null,null,null,'M','Professor', 'Italiana', null, 12, 'Bloco A', null, null, null);

update cliente set cpf = 45390569432, genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16;

update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17;

update cliente set genero = 'F', profissao = 'Professora', numero = 123 where idcliente = 18;

delete from cliente where idcliente = 16;

delete from cliente where idcliente = 18;

--Multiplas Tabelas

--Profissão
create table profissao(
	idprofissao integer not null,
	nome varchar(30),
	
	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

select profissao from cliente;

insert into profissao(idprofissao, nome) values (1, 'Estudante');
insert into profissao(idprofissao, nome) values (2, 'Engenheiro');
insert into profissao(idprofissao, nome) values (3, 'Pedreiro');
insert into profissao(idprofissao, nome) values (4, 'Jornalista');
insert into profissao(idprofissao, nome) values (5, 'Professor');

select * from profissao;

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30),

	constraint pk_ncl_idnacionalidade primary key (idnacionalidade),
	constraint un_ncl_nome unique (nome)
);

select nacionalidade from cliente;

insert into nacionalidade(idnacionalidade, nome) values (1, 'Brasileiro');
insert into nacionalidade(idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade(idnacionalidade, nome) values (3, 'Norte-Americana');
insert into nacionalidade(idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

--Complemento
create table complemento(
	idcomplemento integer not null,
	nome varchar(30),

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

insert into complemento(idcomplemento, nome) values (1 , 'Casa');
insert into complemento(idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;

--Bairro
create table bairro(
	idbairro integer not null,
	nome varchar(30),

	constraint pk_brr_idcomplemento primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro(idbairro, nome) values (1, 'Cidade Nova');
insert into bairro(idbairro, nome) values (2, 'Centro');
insert into bairro(idbairro, nome) values (3, 'São Pedro');
insert into bairro(idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;

-- Aula de Chaves Estrangeiras

select * from cliente;

--alterar o nome da coluna
alter table cliente rename column profissao to idprofissao;

--Alterar o tipo da coluna
alter table cliente alter column idprofissao type integer; -- não funciona por já ter itens cadastrados na coluna

--remover a coluna
alter table cliente drop idprofissao;

--readicionar coluna
alter table cliente add idprofissao integer;

--adicionar chave estrangeira
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

--update com IN
update cliente set idprofissao = 1 where idcliente in (1,9, 10, 12, 15, 17); 
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente = 4 or idcliente = 5;
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

select * from nacionalidade;

--Alteração idNacionalidade
alter table cliente drop nacionalidade;

alter table cliente add idnacionalidade integer;

alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade(idnacionalidade);

--Updates
update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9,13);

select * from cliente;

--Alteração idComplemento
select * from complemento;

alter table cliente drop complemento;

alter table cliente add idcomplemento integer;

alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento(idcomplemento);

--Updates
update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7, 17);

--Alteração idBairro

select * from cliente;
select * from bairro;

alter table cliente drop bairro;

alter table cliente add idbairro integer;

alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro(idbairro);

--Updates
update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4, 5);
update cliente set idbairro = 4 where idcliente = 7 ;

--Criação tabela UF
create table uf(
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_uf_iduf primary key (iduf),
	constraint un_uf_nome unique (nome),
	constraint un_uf_sigla unique (sigla),
);

insert into uf(iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf(iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf(iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf(iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf(iduf, nome, sigla) values (5, 'Rio Grande Do Sul', 'RS');
insert into uf(iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');

select * from uf;

select uf from cliente;

--Criação tabela Municipio

create table municipio(
	idmunicipio integer not null,
	nome varchar(60) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf(iduf)
);

select * from municipio;
select * from cliente;

insert into municipio(idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio(idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio(idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio(idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio(idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio(idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio(idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio(idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio(idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);

--Não necessario atualmente
alter table cliente drop uf;
alter table cliente drop municipio;

alter table cliente add idmunicipio integer;

alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio(idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 7 where idcliente = 8;
update cliente set idmunicipio = 8 where idcliente = 9;
update cliente set idmunicipio = 9 where idcliente in (14, 15);

--Exercicios

create table fornecedor(
	idfornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_fcd_idfornecedor primary key (idfornecedor),
	constraint un_fcd_nome unique (nome)
);

create table vendedor(
	idvendedor integer not null,
	nome varchar(50) not null,

	constraint pk_vdd_idvendedor primary key (idvendedor),
	constraint un_vdd_nome unique (nome)
);

create table transportadora(
	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),

	constraint pk_tpt_idtrasportadora primary key (idtransportadora),
	constraint fk_tpt_idmunicipio foreign key (idmunicipio) references municipio(idmunicipio),
	constraint un_tpt_nome unique (nome)
);

create table produto(
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor numeric(10,2) not null,

	constraint pk_pdt_idproduto primary key (idproduto),
	constraint fk_pdt_idfornecedor foreign key (idfornecedor) references fornecedor(idfornecedor)
);

--inserts

insert into vendedor(idvendedor, nome) values (1, 'André');
insert into vendedor(idvendedor, nome) values (2, 'Alisson');
insert into vendedor(idvendedor, nome) values (3, 'José');
insert into vendedor(idvendedor, nome) values (4, 'Ailton');
insert into vendedor(idvendedor, nome) values (5, 'Maria');
insert into vendedor(idvendedor, nome) values (6, 'Suelem');
insert into vendedor(idvendedor, nome) values (7, 'Aline');
insert into vendedor(idvendedor, nome) values (8, 'Silvana');

insert into fornecedor(idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor(idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor(idfornecedor, nome) values (3, 'BB. Maquinas');

insert into transportadora(idtransportadora, idmunicipio,nome, logradouro, numero) values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');
insert into transportadora(idtransportadora, idmunicipio,nome, logradouro, numero) values (2, 5, 'União Trasnportes', null, null);

insert into produto(idproduto, idfornecedor, nome, valor) values (1, 1, 'Microcomputador', 800);
insert into produto(idproduto, idfornecedor, nome, valor) values (2, 1, 'Monitor', 500);
insert into produto(idproduto, idfornecedor, nome, valor) values (3, 2, 'Placa mãe', 200);
insert into produto(idproduto, idfornecedor, nome, valor) values (4, 2, 'HD', 150);
insert into produto(idproduto, idfornecedor, nome, valor) values (5, 2, 'Placa de video', 200);
insert into produto(idproduto, idfornecedor, nome, valor) values (6, 3, 'Memoria RAM', 100);
insert into produto(idproduto, idfornecedor, nome, valor) values (7, 1, 'Gabinete', 35);

select * from vendedor;
select * from fornecedor;
select * from transportadora;
select * from produto;