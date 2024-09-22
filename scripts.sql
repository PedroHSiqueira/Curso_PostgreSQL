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
	
--Tabela Pedidos

create table pedido(
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor numeric(10, 2) not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idclinente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (1,1,1,1,'2008-04-01',1300);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (2,1,1,1,'2008-04-01',500);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (3,11,2,5,'2008-04-02',300);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (4,8,1,7,'2008-04-05',1000);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (5,9,2,6,'2008-04-06',200);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (6,10,1,6,'2008-04-06',1985);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (7,3,1,7,'2008-04-06',800);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (8,3,null,7,'2008-04-06',175);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (9,12,null,8,'2008-04-07',1300);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (10,6,1,8,'2008-04-10',200);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (11,15,2,1,'2008-04-15',300);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (12,15,2,5,'2008-04-20',500);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (13,9,1,7,'2008-04-20',350);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (14,2,1,5,'2008-04-23',300);
insert into pedido(idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (15, 11,null,5,'2008-04-25',200);

select * from pedido;

create table pedido_produto(
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values(1,1,1,800);
insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values(1,2,1,500);
insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values(2,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3,4,2,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,1,2,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,7,1,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8,7,5,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,6,1,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14,6,3,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15,3,1,200);

select * from pedido_produto;

select * from cliente;
select * from vendedor;
select * from municipio;
select * from complemento;
select * from transportadora;

--exercicios

select nome from vendedor order by nome asc;

select * from produto where valor > 200 order by valor asc;

select nome, valor, (valor + (valor * 0.10)) from produto;

select nome from municipio where iduf = 5;

select * from pedido where data_pedido between '2008-04-10' and '2008-04-25';

select * from pedido where valor between 1000 and 1500;

select * from pedido where valor not between 100 and 500;

select * from pedido where idvendedor = 1 order by valor desc;

select * from pedido where idvendedor = 5  or idvendedor = 7;

select * from pedido where idcliente = 1 order by valor asc;

select * from pedido where idcliente = 15 and idvendedor = 1;

select * from cliente where idmunicipio = 1 or idmunicipio = 9 ;

select * from cliente where idmunicipio != 1 and idmunicipio != 9 ;

select * from cliente where logradouro is null;

select * from vendedor where nome like 'S%';

select * from vendedor where nome like '%a';

select * from municipio where nome like 'P%' and iduf = 2 ;

select * from transportadora where logradouro is not null;

select * from pedido_produto where idpedido = 1;

select * from pedido_produto where idpedido = 6 or idpedido = 10;

--Funções Agregadas

--Media
select avg(valor) from pedido;

--Contagem 
select count(idmunicipio) from municipio;

--Contagem com filtro
select count(idmunicipio) from municipio where iduf = 2;

--Max
select max(valor) from pedido;

--Min
select min(valor) from pedido;

--Soma
select sum(valor) from pedido;

--Group By
select idcliente, sum(valor) from pedido group by idcliente;

--Group by com filtro
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500;


--Joins

--Left Outer Join
select
	cliente.nome,
	profissao.nome 
from 
	cliente 
left outer join 
	profissao on cliente.idprofissao = profissao.idprofissao; 

--Inner Join
select
	cliente.nome,
	profissao.nome 
from 
	cliente 
inner join 
	profissao on cliente.idprofissao = profissao.idprofissao; 

--Exercicios Joins

--1
select 
	cln.nome, 
	profissao.nome as Profissao,
	nacionalidade.nome as Nacionalidade,
	cln.logradouro as Logradouro,
	cln.numero as Numero,
	complemento.nome as Complemento,
	bairro.nome as Bairro,
	municipio.nome as Municipio,
	uf.nome as "Unidade Federativa"
from 
	cliente as cln
left outer join
	profissao on cln.idprofissao = profissao.idprofissao
left outer join
	nacionalidade on cln.idnacionalidade = nacionalidade.idnacionalidade
left outer join
	complemento on cln.idcomplemento = complemento.idcomplemento
left outer join 
	bairro on cln.idbairro = bairro.idbairro
left outer join 
	municipio on cln.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf;

--2
select 
	pdt.nome,
	pdt.valor,
	fornecedor.nome as Fornecedor
from 
	produto as pdt
left outer join 
	fornecedor on pdt.idfornecedor = fornecedor.idfornecedor;

--3
select 
	tpt.nome,
	municipio.nome as municipio
from 
	transportadora as tpt
left outer join
	municipio on tpt.idmunicipio = municipio.idmunicipio

--4 

select 
	pedido.data_pedido,
	pedido.valor,
	cliente.nome as cliente,
	transportadora.nome as transportadora,
	vendedor.nome as vendedor
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join 
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor;

--5

select * from pedido_produto;

select 
	produto.nome,
	pdpt.quantidade,
	pdpt.valor_unitario
from 
	pedido_produto as pdpt
left outer join 
	produto on pdpt.idproduto = produto.idproduto

--Comandos Adicionais

--Extract
select data_pedido, extract(day from data_pedido) from pedido;

--Substring
select nome, substring(nome from 1 for 5), substring(nome, 2) from cliente;

--UPPER case
select nome,upper(nome) from cliente;

--lower case
select nome,lower(nome) from cliente;

--Coalense
select nome,cpf, coalesce(cpf, 'Não informado') from cliente;

--Case
select 
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
from 
	uf;


--Subconsultas -- Selects Aninhados

select 
	data_pedido,
	valor
from 
	pedido
where
	valor > (select avg(valor) from pedido);

--exemplo com count

select
	pedido.data_pedido,
	pedido.valor,
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pedido.idpedido)
from pedido;

--exemplo com update

update pedido set valor = valor + ((valor * 5) / 100) where valor > (select avg(valor) from pedido);

--Exercicios Sub-Consultas

--1
select * from transportadora;
select nome from cliente where idmunicipio = (select idmunicipio from cliente where nome = 'Manoel') and nome != 'Manoel';

--2
select data_pedido,valor from pedido where valor < (select avg(valor) from pedido);

--3
select
	pedido.data_pedido,
	pedido.valor,
	cliente.nome as cliente,
	vendedor.nome as vendedor
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join 
	vendedor on pedido.idvendedor = vendedor.idvendedor
where 
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) > 2;

--4
select nome from cliente where idmunicipio = (select idmunicipio from transportadora where nome = 'BS. Transportes');

--5
select 
	cliente.nome,
	municipio.nome
from 
	cliente
left outer join 
	municipio on cliente.idmunicipio = municipio.idmunicipio
where
	cliente.idmunicipio in (select distinct(idmunicipio) from transportadora);

--Criar View
create view cliente_profissao as 
select cln.nome as cliente,
prf.nome as profissao
from cliente cln
left outer join 
profissao prf on cln.idprofissao = prf.idprofissao

--Funções 
select valor, concat('R$ ', round(valor, 2)) from pedido;

create function formata_moeda(valor float) returns varchar(20) language plpgsql as 
$$
begin 
	return concat('R$ ', round(cast(valor as numeric),2));
end;
$$;

select valor, formata_moeda(valor) from pedido;


