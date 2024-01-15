select *from categorias;
insert into cores (descrição ) 
values ('branco'),
	   ('preto'),
       ('amarelo'),
		('azul'),
        ('vermelho'),
        ('roxo'),
        ('lilás'),
        ('bege'),
        ('bronze'),
	   ('marrom café'),
       ('marrom chocolate'),
		('cinza'),
        ('dourado'),
        ('marfim'),
        ('oliva'),
        ('prata'),
        ('rosa pink'),
	   ('rosa bebe'),
       ('cores diversas'),
		('a definir'),
        ('fornecido cliente')        
        ;
     
insert into produtos ( nome_produto, quantidade, descrição, valor_locação, valor_reposição, foto1_produto, foto2_produto, foto3_produto, cores_id)
	values
    ('banqueta alta branca', 50, 'em material de ferro, pintura eletrostática', 5.5, 60 ,null, null, null,20),
	('banqueta alta preta', 50, 'em material de ferro, pintura eletrostática', 5.5, 60, null,null, null,20),
	('banqueta alta bronze', 95, 'em material de ferro, pintura eletrostática', 5.5, 60, null,null, null,20),
    ('cadeira branca', 120, 'em material de ferro, pintura eletrostática', 4.5, 60, null,null, null,20),
	('cadeira bronze', 250, 'em material de ferro, pintura eletrostática', 4.5, 60, null,null, null,20),
	('bistrô ferro alto branca', 10, 'em material de ferro, pintura eletrostática', 5, 90, null,null, null,20),
	('bistrô ferro alto preto', 10, 'em material de ferro, pintura eletrostática', 5, 90, null,null, null,20),
	('bistrô ferro alto bronze', 10, 'em material de ferro, pintura eletrostática', 5, 90, null,null, null,20),
	('bistrô ferro baixo branca', 10, 'em material de ferro, pintura eletrostática', 4, 90,null,null, null,20),
	('bistrô ferro baixo preto', 10, 'em material de ferro, pintura eletrostática', 4, 90, null,null, null,20),
	('bistrô ferro baixo bronze', 10, 'em material de ferro, pintura eletrostática', 4, 90, null,null, null,20),
	('poltrona medalhão branca', 4, 'assento e encosto em courino cor bege',45, 900, null,null, null,20),
	('poltrona master branca', 2, 'assento e encosto em tecido ',45, 900, null,null, null,20),
	('poltrona luis xv tabaco', 2, 'assento e encosto em tecido jacquard bege escuro',40, 900,null,null, null,20),
	('poltrona clássica ', 2, 'assento e encosto em courino cor bege',55, 900, null,null, null,20),
	('cadeira medalhão branca', 8, 'assento em tecido bege e encosto em palha',35, 800, null,null, null,20),
	('cadeira medalhão branca com braços', 2, 'assento em tecido bege e encosto em palha',35, 800, null,null, null,20),
	('cadeira luis xv branca', 8, 'assento e encosto em courino cor bege',35, 800, null,null, null,20),
	('cadeira luis xv branca com braços', 8, 'assento e encosto em courino cor bege',35, 800, null,null, null,20),
    ('cadeira tiffany', 12, 'feita em acrílico cor transparente',18, 300, null,null, null,20),
	('mesa redonda 1,30 clássica', 1, 'material clássico',50, 800, null,null, null,20),
	('mesa centro clássica ', 1, 'material clássico',50, 800, null,null, null,20),
    ('conjunto doceiras 1 peça', 10, 'doceiras de enfeite mesas doces', 30, 100, null,null, null,20),
	('conjunto doceiras 2 peça', 10, 'doceiras de enfeite mesas doces', 60, 200, null,null, null,20),
    ('conjunto doceiras 3 peça', 10, 'doceiras de enfeite mesas doces', 90, 300, null,null, null,20),
    ('conjunto doceiras 4 peça', 10, 'doceiras de enfeite mesas doces', 110, 400, null,null, null,20),
	('conjunto doceiras 5 peça', 10, 'doceiras de enfeite mesas doces', 130, 500,null,null, null,20),
	('conjunto doceiras 6 peça', 10, 'doceiras de enfeite mesas doces', 150, 600, null,null, null,20),
	('conjunto doceiras 7 peça', 10, 'doceiras de enfeite mesas doces', 170, 700,null,null, null,20),
	('conjunto doceiras 8 peça', 10, 'doceiras de enfeite mesas doces', 200, 800, null,null, null,20),
	('conjunto doceiras 9 peça', 10, 'doceiras de enfeite mesas doces', 250, 900, null,null, null,20),
	('conjunto doceiras 10 peça', 10, 'doceiras de enfeite mesas doces', 270, 1000, null,null, null,20),
    ('conjunto lanterna torre', 02, 'enfeite mesas doces', 90, 300, null,null, null,20),
	('conjunto lanterna branco envelhecido', 02, 'enfeite mesas doces', 110, 400, null,null, null,20),
    ('conjunto lanterna preta', 02, 'enfeite mesas doces', 70, 250, null,null, null,20),
    ('carrinho 2 com prateleira e rodas de ferro', 1, 'medindo 1,05x0,65x0,85alt',120,650,null,null, null,20),
    ('pufe 0,40 x 0,40', 80, 'pufes revestidos de capa em oxford em diversas cores', 8, 55.00, null,null, null,20),
    ('sofá modulável 2,00 4 lugares', 10, 'sofás revestidos de capa em oxford em diversas cores', 120, 350.00, null,null, null,20),
    ('namoradeira 1,60 x 0,60', 12, 'pufes retangulares medindo 1,6x0,70 revestidos de capa em oxford em diversas cores', 80, 300.00, null,null, null,20),
    ('pufe 0,60 x 0,,60', 16, 'pufes revestidos de capa em oxford em diversas cores', 25, 100.00, null,null, null,20),
    ('pufe 0,40 x 0,40', 80, 'pufes revestidos de capa em oxford em diversas cores', 8, 55.00,null,null, null,20),
    ('cilindro 0,60 cm diâmetro com rodinhas', 2, 'revestidos de capa em oxford em diversas cores', 100, 200.00, null,null, null,20),
    ('biombo branco 2,40x2,20 3 folhas', 70, 'utilizado para tapar portas, banheiros, áreas de cozinha', 100, 320.00, null,null, null,20),
    ('biombo preto 2,40x2,20 3 folhas', 70, 'utilizado para tapar portas, banheiros, áreas de cozinha', 100, 320.00, null,null, null,20),
	('quadro negro lousa horizontal 2,50 moldura madeira', 1, 'não acompanha o desenho e giz',150, 450.00, null,null, null,20),
    ('quadro negro moldura madeira com pés pequenos', 120, 'não acompanha a arte e giz',110, 300.00, null,null, null,20),
    ('cavalete branco grande', 1, 'utilizado para colocar fotos, quadros', 50, 355.00, null,null, null,20),
	('cadeirinha infantil branca', 12, 'utiliza-se em conjunto com mesa centro kids',8,120, null,null, null,20),
    ('bistrô alto madeira coletivo 2m', 15, 'possuí altura de 1,10 cm', 80, 650, null,null, null,20),
	('bistrô madeira alto 0,60 x 0,60 x 1,05 alt', 15,'saí com 4 banquetas',25, 450,null,null, null,20),
	('bistrô madeira baixo 0,60 diâmetro', 15,'saí com pufes forrados' ,20, 300, null,null, null,20),
	('banqueta alta madeira assento corda', 55, 'utilizado em conjunto com bistros ', 8, 95,null,null, null,20),
	('bar madeira 2 m ', 2,'bar com tampo, prateleira interna de montagem fácil', 180, 650, null,null, null,20),
	('bar madeira 1,70 m ', 2,'bar com tampo, prateleira interna de montagem fácil', 150, 600, null,null, null,20),
	('sousplat cor bronze', 315,'pintura eletrostatica',3, 95, null,null, null,20),
	('sousplat cor dourado', 100,'pintura eletrostatica',3, 95, null,null, null,20),
	('sousplat cor azul', 120,'pintura eletrostatica',3, 95, null,null, null,20),
	('sousplat cor verde', 120,'pintura eletrostatica',3, 95,null,null, null,20),
	('sousplat cor bege', 120,'pintura eletrostatica',3, 95, null,null, null,20),
	('sousplat cor espelhado', 150,'pintura eletrostatica',4, 120, null,null, null,20),
    ('tapete platina 2 x 3', 2, 'usado em recepções',80, 420, null,null, null,20),
    ('tapete bege estampado 2 x 3', 1, 'usado em recepções',110, 900, null,null, null,20),
    ('tapete bege estampado 2,50  x 3,00', 1, 'usado em recepções',150, 950, null,null, null,20),
    ('tapete bege estampado 3,00  x 4,00', 1, 'usado em recepções',180, 1000, null,null, null,20),
    ('tapete persa 2 x 3', 3, 'usado em recepções',110, 1200, null,null, null,20),
    ('tapete persa 2,5 x 3,5', 1, 'usado em recepções',140, 1400, null,null, null,20),
    ('tapete azul marinho estampado 2 x 3', 2, 'usado em recepções',160, 1400, null,null, null,20),
    ('tapete azul marinho patchtwork 2 x 3', 2, 'usado em recepções',160, 1400, null,null, null,20),
    ('toalha fendi medalhao 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('toalha bege e branco arabesco 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('toalha rosa antigo medalhão brocada 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('toalha azul marinho listrada brocada 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('toalha fendi listrada brocada 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('toalha dourada medalhao brocada 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('toalha fendi poá brocada 3,20 diâmetro',15, 'usado em mesas de 1,60 diâmetro',28, 350, null,null, null,20),
    ('mesa 3x1 madeira com 2 pés cubos', 4, 'mesa em madeira rústica', '140.', '600.', null,null, null,20)
;

insert into categorias ( descrição ) 
values ('ferro'),
	   ('clássico'),
       ('objetos_decoração'),
		('forrado'),
        ('pintado'),
        ('madeira'),
        ('tapete'),
        ('toalha')
        ;
					

select*from categorias_produto;

insert into categorias_produto(produtos_id, categorias_id) values (1,1);
insert into categorias_produto(produtos_id, categorias_id) values (2,1);
insert into categorias_produto(produtos_id, categorias_id) values (3,1);
insert into categorias_produto(produtos_id, categorias_id) values(4,1);
insert into categorias_produto(produtos_id, categorias_id) values(5,1);
insert into categorias_produto(produtos_id, categorias_id) values (6,1);
insert into categorias_produto(produtos_id, categorias_id) values (7,1);
insert into categorias_produto(produtos_id, categorias_id) values (8,1);
insert into categorias_produto(produtos_id, categorias_id) values (9,1);
insert into categorias_produto(produtos_id, categorias_id) values (10,1);
insert into categorias_produto(produtos_id, categorias_id) values (11,1);
insert into categorias_produto(produtos_id, categorias_id) values (12,2);
insert into categorias_produto(produtos_id, categorias_id) values (13,2);
insert into categorias_produto(produtos_id, categorias_id) values (14,2);
insert into categorias_produto(produtos_id, categorias_id) values (15,2);
insert into categorias_produto(produtos_id, categorias_id)values (16,2);
insert into categorias_produto(produtos_id, categorias_id) values (17,2);
insert into categorias_produto(produtos_id, categorias_id) values (18,2);
insert into categorias_produto(produtos_id, categorias_id) values (19,2);
insert into categorias_produto(produtos_id, categorias_id) values (20,2);
insert into categorias_produto(produtos_id, categorias_id) values (21,2);
insert into categorias_produto(produtos_id, categorias_id) values (22,2);
insert into categorias_produto(produtos_id, categorias_id) values (23,3);
insert into categorias_produto(produtos_id, categorias_id) values (24,3);
insert into categorias_produto(produtos_id, categorias_id) values (25,3);
insert into categorias_produto(produtos_id, categorias_id) values (26,3);
insert into categorias_produto(produtos_id, categorias_id) values (27,3);
insert into categorias_produto(produtos_id, categorias_id) values (28,3);
insert into categorias_produto(produtos_id, categorias_id) values (29,3);
insert into categorias_produto(produtos_id, categorias_id) values (30,3);
insert into categorias_produto(produtos_id, categorias_id) values (31,3);
insert into categorias_produto(produtos_id, categorias_id) values (32,3);
insert into categorias_produto(produtos_id, categorias_id) values (33,3);
insert into categorias_produto(produtos_id, categorias_id) values (34,3);
insert into categorias_produto(produtos_id, categorias_id) values (35,3);
insert into categorias_produto(produtos_id, categorias_id) values (36,3);
insert into categorias_produto(produtos_id, categorias_id) values (37,4);
insert into categorias_produto(produtos_id, categorias_id) values (38,4);
insert into categorias_produto(produtos_id, categorias_id) values (39,4);
insert into categorias_produto(produtos_id, categorias_id) values (40,4);
insert into categorias_produto(produtos_id, categorias_id) values (41,4);
insert into categorias_produto(produtos_id, categorias_id) values (42,4);
insert into categorias_produto(produtos_id, categorias_id) values (43,5);
insert into categorias_produto(produtos_id, categorias_id) values (44,5);
insert into categorias_produto(produtos_id, categorias_id) values (45,5);
insert into categorias_produto(produtos_id, categorias_id) values (46,5);
insert into categorias_produto(produtos_id, categorias_id) values (47,5);
insert into categorias_produto(produtos_id, categorias_id) values (48,5);
insert into categorias_produto(produtos_id, categorias_id) values (49,6);
insert into categorias_produto(produtos_id, categorias_id) values (50,6);
insert into categorias_produto(produtos_id, categorias_id) values (51,6);
insert into categorias_produto(produtos_id, categorias_id) values (52,6);
insert into categorias_produto(produtos_id, categorias_id) values (53,6);
insert into categorias_produto(produtos_id, categorias_id) values (54,6);
insert into categorias_produto(produtos_id, categorias_id) values (55,3);
insert into categorias_produto(produtos_id, categorias_id) values (56,3);
insert into categorias_produto(produtos_id, categorias_id) values (57,3);
insert into categorias_produto(produtos_id, categorias_id) values (58,3);
insert into categorias_produto(produtos_id, categorias_id) values (59,3);
insert into categorias_produto(produtos_id, categorias_id) values (60,3);
insert into categorias_produto(produtos_id, categorias_id) values (61,7);
insert into categorias_produto(produtos_id, categorias_id) values (62,7);
insert into categorias_produto(produtos_id, categorias_id) values (63,7);
insert into categorias_produto(produtos_id, categorias_id) values (64,7);
insert into categorias_produto(produtos_id, categorias_id) values (65,7);
insert into categorias_produto(produtos_id, categorias_id) values (66,7);
insert into categorias_produto(produtos_id, categorias_id) values (67,7);
insert into categorias_produto(produtos_id, categorias_id) values (68,7);
insert into categorias_produto(produtos_id, categorias_id) values (69,8);
insert into categorias_produto(produtos_id, categorias_id) values (70,8);
insert into categorias_produto(produtos_id, categorias_id) values (71,8);
insert into categorias_produto(produtos_id, categorias_id) values (72,8);
insert into categorias_produto(produtos_id, categorias_id) values (73,8);
insert into categorias_produto(produtos_id, categorias_id) values (74,8);
insert into categorias_produto(produtos_id, categorias_id) values (75,1);
insert into categorias_produto(produtos_id, categorias_id) values (76,6);
insert into categorias_produto(produtos_id, categorias_id) values (76,4);

insert into clientes( nome_cliente,CPF, CNPJ, endereço, data_nascimento, fone, email, observações) 
values
('Karine Macena Porciúncula','05871119093','null','R Caminho do Meio, 1 Porto Alegre/rs', '1940-01-01','51-999489918', 'karinem@gmail.com', 'cliente particular'),
('Daiane Lorena Assunção','91273803001','null','R Caminho do Início, 2, Alvorada/RS','1942-06-19','51-999489914','daianelorena@gmail.com', 'decoradora'),
('Danilo Pedro Henrique Dias', '42844106013','null', 'R Caminho do Fim, 3, Gravataí/RS','1942-03-13','51-988889918', 'danilopedrodias@comercialrizzo.com', 'arquiteto' ),
('Julia Aparecida Adriana de Paula', '32439888028','null','R Sem Caminho do Meio, 21, Charqueadas/RS','1942-05-21','51-35819918', 'juliaaparecidadepaula@efetivaseguros.com.br', 'organizadora eventos' ),
('Camila Fátima Lara Rezende','10181257106','null', 'Av Tromppowsky, 100, Porto Alegre/Rs','1984-06-25', '48-9885064848', 'camila_rezende@jotace.eti.br', 'florista'),
('Lara Analu Barbosa', '01381227333','null','Quadra D-1, 327, Porto Alegre/RS','1958-04-06',  '51-984442319', 'laraanalubarbosa@redhouse.com.br', 'decoradora' ),
('Pietra Juliana Isabelly Nascimento','74868383620','null', 'R Rua Tacílio Leite, 353, Canoas/RS','1973-06-15',  '51-984195208', 'pietra_nascimento@novadeliveri.com.br', 'Cliente particular' ),
('Nelson Caio José Lima','52732309001','null','Rua Tenente Antônio Reginatto, 869, Canoas/RS' ,'1982-06-11', '51-37269278', 'nelson_caio_lima@teravida.com.br', 'organizador eventos'),
('Lorenzo Luiz Miguel da Paz', '99450144800','null','R Rua Alberto Soczek, 870 canoas/RS','1978-05-22', '51-982358455', 'lorenzoluizdapaz@iedi.com.br', 'Cliente particular' ),
('Tânia Nair Stefany Bernardes', '38001780872','null','R Antonio de Miranda, 511, Alvorada/RS','2000-06-23',  '51-982713580', 'tania_nair_bernardes@nine9.com.br', 'Decoradora' ),
('Vitória Alícia Nair Drumond','15429311340','null', 'Rua Beatriz de Barros Bumlai, 386, canoas/RS','1992-02-17','51-985104243', 'vitoria_drumond@facebook.com', 'Cliente particular' ),
('Mariane Bárbara Luciana Fogaça', '72366358989','null',  'Avenida Melício Machado, 523, Porto Alegre/RS','1959-06-15','51-91387555', 'mariane-fogaca74@lphbrasil.com.br', 'decoradora'),
('Daiane Amanda Agatha Araújo','81804764566','null','Travessa Niterói, 5447 Canoas/RS', '1981-06-12' , '51-984822267', 'daianeamandaaraujo@csa.edu.br', 'Formatura'),
('Luís Manuel Theo Castro', '37132771680','null', 'Rua João Paulo Rodrigues de Lima, 936, Gravatai/RS', '1950-02-08','51-986627109', 'luis.manuel.castro@paulistadovale.org.br', 'decorador' ),
('Tatiane Olivia Mariana Pereira', '48751056909','null','Avenida Guilherme de Paula Xavier, 858, Canoas/Rs','1977-04-14', '51-983029636', 'tatiane-pereira77@doucedoce.com.br', 'Organizadora eventos' );

insert into orcamentos(dataOP, data_evento, data_entrega, data_coleta, qtde_diárias, taxa_domingo_feriado, taxa_hor_especial,frete,valor_locado,valor_total, observações, clientes_id) 
values
      ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', '300.','200.','150.',1,1,'Entrega na parte da manhã',1),
	  ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 1, '200.','Entrega na parte da manhã',32,1),
	  ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 100, '200.','Entrega na parte da manhã',55,1),
	  ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 2, '200.','Entrega na parte da manhã',39,1),
	  ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 4, '200.','Entrega na parte da manhã',40,1),
      ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 20, '200.','Entrega na parte da manhã',41,1),
	  ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 1, '200.','Entrega na parte da manhã',65,1),
	  ('2022-07-20', '2022-07-22', '2022-07-22','2022-07-25', '1', 12, '200.','Entrega na parte da manhã',75,1);
      
      insert into orcamentos_categorias_produto(qtde_produtos_locados,orcamentos_id, categorias_produto_id) values
      (2, 1, 77);

select *from orcamentos_categorias_produto

