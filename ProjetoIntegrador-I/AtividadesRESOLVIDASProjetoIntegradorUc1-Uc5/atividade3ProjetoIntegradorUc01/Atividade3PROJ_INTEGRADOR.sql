/*PARTE 1, Ajuste questões de segurança, incluindo usuários, papéis e permissões.*/

-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ativ2_proj_int` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `ativ2_proj_int` ;

-- -----------------------------------------------------
-- Table `ativ2_proj_int`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ativ2_proj_int`.`cargo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  `salario` DECIMAL(9,2) NULL DEFAULT NULL,
  `comissao` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ativ2_proj_int`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ativ2_proj_int`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(100) NOT NULL,
  `ultimo_login` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `ativ2_proj_int`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ativ2_proj_int`.`funcionario` (
  `nome` VARCHAR(255) NOT NULL,
  `telefone` VARCHAR(45) NULL DEFAULT NULL,
  `cpf` VARCHAR(11) NULL DEFAULT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `cargo_id` INT NULL DEFAULT NULL,
  `usuario_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `cargo_id` (`cargo_id` ASC) VISIBLE,
  INDEX `fk_funcionario_usuario` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_funcionario_usuario`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `ativ2_proj_int`.`usuario` (`id`),
  CONSTRAINT `funcionario_ibfk_1`
    FOREIGN KEY (`cargo_id`)
    REFERENCES `ativ2_proj_int`.`cargo` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


/*POPULANDO DADOS NAS TABELAS CARGO, FUCNIONÁRIO E USUÁRIO*/

INSERT INTO cargo (descricao, salario, comissao)
VALUES ('Gerente', 5000, null),
		('Gerente administrativo', 3000, null),
        ('Vendedor', 2500, 1)		
	;
    select * from cargo;
       select * from usuario;
          select * from funcionario;
    

INSERT INTO usuario (id, login, senha, ultimo_login)
VALUES 
	(1, 'admin','12345','2022-01-10 10:00:00'),
	(2, 'gerencia','67890','2022-01-10 10:00:00'),
	(3, 'vendedor','1q2w3e','2022-01-10 10:00:00')
	;

INSERT INTO funcionario (nome, telefone, cpf, cargo_id, usuario_id)
VALUES ('Ramires Sanches', '51 7898-1234', '84537768061', 1, 1),
	('Rosália Sanches', '51 7534-1234', '03074142057', 2, 2),
	('Anderson Santos', '51 7534-7897', '40967947081', 3, 3)
    ;
/*Criar usuário e role para funcionário atendentes(vendedor), o qual pode manipular as
tabelas de venda, cliente e produto, mas não deve ter acesso (nem para
consulta) a funcionário e cargo e não deve ser capaz de realizar
alterações de estrutura em nenhuma tabela*/

create	user 'vendedor'@'localhost' identified by '12345';
select * from mysql.user;
/*Criando  o papel, funcao, role consulta*/
   create role 'vendedor';
   select * from mysql.user;
   /*permissao para o papel vendedor*/
   grant select,insert,update,create on ativ2_proj_int.clientes to 'vendedor';
   grant select,insert,update,create on ativ2_proj_int.orcamentos to 'vendedor';
   grant select on ativ2_proj_int.produtos to 'vendedor';
   grant select,insert,update,create on ativ2_proj_int.produtos_orcamento to 'vendedor';
  
    flush privileges;
    grant 'vendedor' to 'vendedor'@'localhost';
set default role 'vendedor' to 'vendedor'@'localhost';
flush privileges;
show grants for 'vendedor'@'localhost';
show grants for 'vendedor';

/*Criar usuário e role para o cargo 'gerente', o qual pode manipular todas
tabelas,*/

create	user 'gerente'@'localhost' identified by '67890';
select * from mysql.user;
/*Criando  o papel, funcao, role consulta para usuario admin*/
   create role 'admin';
  
   select * from mysql.user;
   /*permissao para o papel gerencia*/
    grant select,insert,update,delete,create,drop on ativ2_proj_int.* to 'admin';
  
    flush privileges;
    grant 'admin' to 'gerente'@'localhost';
set default role 'admin' to 'gerente'@'localhost';
flush privileges;
show grants for 'gerente'@'localhost';
show grants for 'admin';

/*Criar usuário e role para o cargo 'gerente administrativo', o qual pode manipular todas
tabelas,*/

create	user 'gerenteadministrativo'@'localhost' identified by '12345';
select * from mysql.user;
/*Criando  o papel, funcao, role consulta para usuario gerencia, nao podendo deletar e excluir tabelas*/
   create role 'gerencia';
  
   select * from mysql.user;
   /*permissao para o papel gerencia*/
    grant select,insert,update,create on ativ2_proj_int.* to 'gerencia';
  
    flush privileges;
    grant 'gerencia' to 'gerenteadministrativo'@'localhost';
set default role 'gerencia' to 'gerenteadministrativo'@'localhost';
flush privileges;
show grants for 'gerenteadministrativo'@'localhost';
show grants for 'gerencia';

/*PARTE 2:Crie visões no banco de dados para consultas mais frequentes*/

/*VIEW*/
create view CONSULTA as SELECT po.nome_produtos,p.foto1_produto,p.cor_produto, p.cor_assento, p.cor_forração,
po.valor_unitario,po.qtde_produtos_locados,o.data_evento, o.data_entrega,o.data_coleta, o.taxa_domingo_feriado, 
taxa_hor_especial, o.frete, o.observações, c.nome_cliente, c.cpf, c.cnpj, c.endereço, c.fone
FROM produtos_orcamento as po inner join produtos as p on (po.id_produtos=p.id)
	inner join orcamentos as o on (po.id_orcamentos=o.id)
    inner join clientes as c on ( o.clientes_id=c.id)
order by o.data_evento desc;

select * from CONSULTA;

/*PARTE 3:Crie ao menos uma stored function, um stored procedure ou um trigger para o banco de dados,
 selecionando uma funcionalidade que seja adequada para tanto.*/
 
 /*1. Crie um stored procedure que receba id de cliente, data inicial e
data final e que mostre a lista de produtos locados realizadas pelo referido cliente
entre as datas informadas (incluindo essas datas), mostrando:
nome do cliente, 
endereço do cliente,
fone do cliente
nome dos produtos, 
quantidade,
valor unitario e 
sub_total dos produtos locados.
No script, inclua o código de criação e uma chamada ao procedure.*/
 
/*select * from produtos_orcamento;
select * from orcamentos where clientes_id='1';
select * from clientes where id=1;
Para confirmações de dados*/
DROP PROCEDURE sp_locacao_clientes
DELIMITER //
create procedure sp_locacao_clientes ( id_cliente int, data_eventoi date, data_eventof date)
begin
select c.nome_cliente,c.endereço, c.fone, po.nome_produtos, po.qtde_produtos_locados, po.sub_total
from   produtos_orcamento as po inner join produtos as p on ( po.id_produtos= p.id)
		inner join orcamentos as o on (po.id_orcamentos= o.id)
		inner join clientes as c on ( o.clientes_id= c.id)
where  c.id = id_cliente
and    o.data_evento between data_eventoi and data_eventof
;
end//
DELIMITER ;
call sp_locacao_clientes(1, '2000-01-01 ', '2022-08-23');

/*CRIAÇÃO STORED FUNCTION PARTE 3 :*/
/*2. Crie uma stored function que receba id de funcionário,
 data inicial
e data final 
e retorne a comissão total desse funcionário no período indicado. 
No script, inclua o código de criação e uma chamada à function*/
select * from funcionario;
select* from produtos_orcamento;
select * from orcamentos;
select* from produtos;
select * from cargo;-- vendedor com id = 3 comissão 1 % demais null--
/*tive de incluir uma chave estrangeira funcionario_id na tabela orcamentos, para através dessa opção poder fazer as consultas*/ 
alter table orcamentos add constraint funcionario_id 
foreign key (funcionario_id) references funcionario (id);

select po.sub_total, f.cargo_id
from produtos_orcamento as po inner join orcamentos as o on( po.id_orcamentos=o.id)
	inner join funcionario as f on (o.funcionario_id=f.id)           
where
f.id=3;
/*INÍCIO AQUI*/
DROP function  f_comissao_func ; 
DELIMITER //
create function  f_comissao_func(id_funcionario int, datai datetime, dataf datetime) returns decimal (10,2) deterministic
begin
declare comissao decimal(10,2);    
  
select  sum((po.sub_total*c.comissao)/100)	into comissao
from produtos_orcamento as po inner join orcamentos as o on( po.id_orcamentos=o.id)
	inner join funcionario as f on (o.funcionario_id=f.id) 
    inner join cargo as c ON c.id= f.cargo_id
    
where
f.id=id_funcionario
and    o.data_evento between datai and dataf;

return comissao;
end//
DELIMITER ;
/*IMPRIMINDO AS COMISSÕES NA TELA*/
select f_comissao_func(3, '2019-01-08 10:10:00', '2022-01-13 12:01:00') as 'Comissão';

/********************************FUNCTION 2***********************************/
/*3. Crie uma stored function que receba id de cliente e retorne se o
cliente é “PREMIUM” ou “REGULAR”. Um cliente é “PREMIUM” se já
realizou mais de R$ 10 mil em compras nos últimos dois anos. Um cliente
é “REGULAR” se ao contrário. No script, inclua o código de criação e uma
chamada à function*/
SELECT * FROM CLIENTES;
DROP function  f_cat_cliente ; 
DELIMITER //
create function  f_cat_cliente(id_cliente int) returns varchar(7) deterministic
begin
	declare resultado  varchar(7);    
  
select  sum(orcamentos.valor_total) into resultado
from orcamentos 

where  orcamentos.clientes_id=id_cliente and TIMESTAMPDIFF(YEAR, data, curdate())>=2;
	if resultado <10000 then
        return 'REGULAR';
	ELSE
		RETURN 'PREMIUM';
	END IF;
    
End//
DELIMITER ;
## CHAMANDO a FUNCTION CONFORME ID DO CLIENTE ##

select f_cat_cliente(1);

select clientes_id,sum(orcamentos.valor_total) 
from orcamentos
where clientes_id =1;



/*Criação de uma trigger(gatilho) caso seja criado um novo usuário*/
CREATE TRIGGER tr_novoUsuario BEFORE INSERT
ON usuario
FOR EACH ROW
SET NEW.senha = sha1(NEW.senha); 
select *from usuario;
/*testando a inserção de um novo usuário 
com a trigger*/
INSERT INTO usuario (id, login, senha, ultimo_login)
VALUES 
	(4,'atendente','199199','2022-08-25 23:00:00');
/*OUTRA TRIGGER*/ 

 
 
/*PARTE 4: Crie ao menos um índice composto para uma das tabelas.*/
CREATE INDEX idx_nome_produto ON produtos(nome_produto);
CREATE INDEX idx_quantidade ON produtos(quantidade);

/*PARTE 5: Descreva textualmente uma rotina de administração de banco de dados, prevendo backups, 
restore e checagem de integridade periódica.*/
FOI FEITO EM DOCUMENTO, SALVO EM FORMATO WORD, ANEXADO NESTE CONTEXTO.