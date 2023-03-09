create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categorias(
id bigint auto_increment,
tipo varchar(20),
primary key (id)
);
create table tb_pizzas(
id bigint auto_increment,
nome varchar(60),
valor int,
sabor double,
primary key(id)
);
alter table tb_pizzas add categorias_id bigint;

alter table tb_pizzas add constraint fk_categorias
foreign key(catagorias_id) references tb_categorias(id);

insert into tb_categorias(tipo)
values("doce");
insert into tb_categorias(tipo)
values("salgada");

insert into tb_pizzas(nome, valor, categorias_id)
values("Calabreza", 28.00, 2);
insert into tb_pizzas(nome, valor, categorias_id)
values("Quatro Queijos", 32.00, 2);
insert into tb_pizzas(nome, valor, categorias_id)
values("Marquerita", 30.00, 2);
insert into tb_pizzas(nome, valor, categorias_id)
values("Mussarela", 28.00, 2);
insert into tb_pizzas(nome, valor, categorias_id)
values("Brigadeiro", 25.00, 1);
insert into tb_pizzas(nome, valor, categorias_id)
values("Rodizio", 100.00, 2);
insert into tb_pizzas(nome, valor, categorias_id)
values("Romeu e Julieta", 29.00, 1);
insert into tb_pizzas(nome, valor, categorias_id)
values("Frango", 29.00, 2);
insert into tb_pizzas(nome, valor, categorias_id)
values("A moda da Casa", 34.00, 2);


select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor < 45.00;
select * from tb_pizzas where valor between 50
and 100;
select * from tb_personagem where nome like "M%";

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

select nome, valor, tipo from tb_pizzas
inner join tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

select nome, valor, tipo from tb_pizzas
left join tb_categorias 
ON tb_categorias.id = tb_pizzas.categorias_id
where tipo = "doce";



