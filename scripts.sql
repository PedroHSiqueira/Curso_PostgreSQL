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