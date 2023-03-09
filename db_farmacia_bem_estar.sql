create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table tb_categorias(
id bigint auto_increment,
tipo varchar(20),
primary key (id)
);
create table tb_produtos(
id bigint auto_increment,
nome varchar(60),
valor int,
descricao varchar (60),
primary key(id)
);
alter table tb_produtos add categorias_id bigint;

alter table tb_produtos add constraint fk_categorias
foreign key(catagorias_id) references tb_categorias(id);

insert into tb_categorias(tipo)
values("medicamentos");
insert into tb_categorias(tipo)
values("cosmeticos");

insert into tb_produtos(nome, valor, categorias_id)
values("Sabonete Facial", 28.00, 2);
insert into tb_produtos(nome, valor, categorias_id)
values("Sabonete Dove", 2.00, 2);
insert into tb_produtos(nome, valor, categorias_id)
values("Dipirona", 17.00, 1);
insert into tb_produtos(nome, valor, categorias_id)
values("Venvance", 370.00, 1);
insert into tb_produtos(nome, valor, categorias_id)
values("Shampoo Seda", 25.00, 2);
insert into tb_produtos(nome, valor, categorias_id)
values("Condicionador Seda", 29.00, 2);
insert into tb_produtos(nome, valor, categorias_id)
values("Captopril", 10.00, 1);
insert into tb_produtos(nome, valor, categorias_id)
values("AS", 8.00, 1);
insert into tb_produtos(nome, valor, categorias_id)
values("Vitamina B12", 60.00, 1);


select * from tb_produtos where valor > 50.00;
select * from tb_pizzas where valor < 50.00;
select * from tb_pizzas where valor between 5.00
and 60.00;
select * from tb_personagem where nome like "c%";

SELECT *
FROM tb_tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

select nome, valor, tipo from tb_produtos
inner join tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

select nome, valor, tipo from tb_pizzas
left join tb_categorias 
ON tb_categorias.id = tb_pizzas.categorias_id
where tipo = "cosmeticos";



