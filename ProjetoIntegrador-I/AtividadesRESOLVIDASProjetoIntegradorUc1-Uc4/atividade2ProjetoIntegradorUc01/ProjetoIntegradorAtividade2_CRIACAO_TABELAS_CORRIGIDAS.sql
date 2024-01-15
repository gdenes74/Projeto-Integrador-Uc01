

CREATE TABLE categorias(
id_categorias int not null auto_increment primary key,
descrição  varchar (100) not null
);
select* from categorias;
CREATE TABLE produtos(
id_produtos int not null auto_increment primary key,
nome_produto varchar(100),
quantidade int,
descrição varchar(100),
valor_locação decimal(9,2),
valor_reposição decimal(9,2),
foto1_produto blob,
foto2_produto blob,
foto3_produto blob,
cores_id int,
foreign key (cores_id) references cores (id_cores)
);

create table cores(
id_cores int not null auto_increment primary key,
descrição varchar(100) 
);
CREATE TABLE categorias_produto(
id_categorias_produto int not null auto_increment primary key,
produtos_id int not null,
categorias_id int not null,
foreign key (produtos_id) references produtos (id_produtos),
foreign key (categorias_id) references categorias(id_categorias)

);
CREATE TABLE clientes(
id_clientes int not null auto_increment primary key,
nome_cliente varchar (100) not null ,
CPF varchar(11),
CNPJ varchar(14),
endereço varchar(100) not null,
data_nascimento date,
fone varchar(45) not null,
email varchar(45),
observações varchar (100)
);

CREATE TABLE orcamentos(
id_orcamentos int not null auto_increment primary key,
dataOP date not null,
data_evento date not null,
data_entrega date, 
data_coleta date, 
qtde_diárias decimal(9,2),
taxa_domingo_feriado decimal (9,2) not null default 300,
taxa_hor_especial decimal(9,2) not null default 200,
frete decimal (9,2) not null default 150, 
valor_locado decimal (9,2) not null,
valor_total decimal(9,2) not null,
observações mediumtext,
clientes_id int not null,
foreign key (clientes_id) references clientes(id_clientes)
);
CREATE TABLE orcamentos_categorias_produto(
id_orcamentos_categorias_produtos int not null auto_increment primary key,
qtde_produtos_locados int,
orcamentos_id int not null,
categorias_produto_id int not null,
foreign key (orcamentos_id) references orcamentos(id_orcamentos),
foreign key (categorias_produto_id) references categorias_produto (id_categorias_produto)

);
select *from orcamentos_categorias_produto




