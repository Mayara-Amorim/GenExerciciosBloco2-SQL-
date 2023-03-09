create database db_sgj;
use db_sgj;
create table tb_classe(
id bigint auto_increment,
nivel varchar(20),
primary key (id)
);
create table tb_personagem(
id bigint auto_increment,
nome varchar(60),
idade int,
pontuacao int,
poder_ataque int,
primary key(id)
);
alter table tb_personagem add classe_id bigint;

alter table tb_personagem add constraint fk_classe
foreign key(classe_id) references tb_classe(id);

insert into tb_classe(nivel)
values("iniciante");
insert into tb_classe(nivel)
values("Ferro");
insert into tb_classe(nivel)
values("Bronze");
insert into tb_classe(nivel)
values("Prata");
insert into tb_classe(nivel)
values("Ouro");
insert into tb_classe(nivel)
values("Diamante");

insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("RonaldoTotal90", 24, 40000, 6);
insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("VilãoDaArlequina", 14, 1800, 1);
insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("Mr.Freeze", 30, 28000, 4);
insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("Robin", 18, 1000, 1);
insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("Batgirl", 17, 1000, 1);
insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("IzzyGatinha", 24, 4000, 2);
insert into tb_personagem(nome, idade, poder_ataque, classe_id)
values("Camila", 28, 40350, 6);

select * from tb_personagem where poder_ataque > 2000;
select * from tb_personagem where poder_ataque between 1000
and 2000;
select * from tb_personagem where poder_ataque >=1000
and poder_ataque <= 2000;
select * from tb_personagem where nome like "%c%";

SELECT *
FROM tb_personagem
INNER JOIN tb_classe
ON tb_classe.id = tb_personagem.classe_id;

select nome, poder_ataque, nivel from tb_personagem
inner join tb_classe 
on tb_classe.id = tb_personagem.classe_id;

select nome, poder_ataque, nivel from tb_personagem
left join tb_classe 
on tb_classe.id = tb_personagem.classe_id
where nivel = "iniciante";



