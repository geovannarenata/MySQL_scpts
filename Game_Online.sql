create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	idCargo int auto_increment primary key, 
    nomeCargo varchar(300),
    setor varchar(300),
    telefone varchar(100));
         
create table racaPersonagem(
	idRaca int primary key auto_increment, 
    nomeRaca varchar(500));
    
create table classePersonagem(
	idClasse int primary key auto_increment,
    nomeClasse varchar(400));

create table sexoPersonagem(
	idSexo int primary key auto_increment,
    tipoSexo char);
    
create table tb_personagem(
	idPers int auto_increment primary key,
    nomePers varchar(500),
    sexoPers int,			-- foreign key sexoPersonagem
    racaPers int , 			-- foreign key racaPersonagem
    classePers int,			-- foreign key classePersonagem
    poderAtaque int,
    poderDefesa int, 
    idCargo int);			-- foreign key tb_classe
    
    
    Alter table tb_personagem
    ADD constraint fk_sexo_tbPers foreign key (sexoPers) references sexoPersonagem (idSexo);
    
    Alter table tb_personagem
    ADD constraint fk_raca_Personagem foreign key (racaPers) references racaPersonagem (idRaca);
    
	Alter table tb_personagem
    ADD constraint fk_classe_Personagem foreign key (classePers) references classePersonagem (idClasse);
    
    Alter table tb_personagem
    ADD constraint fk_cargo_Personagem foreign key (idCargo) references tb_classe (idCargo);
    
    
 -- INSERTS TB_CLASSE 
 
	insert into tb_classe (nomeCargo, setor, telefone) values ("Desenvolvedor Front End", "Desenvovimento de Aplicações", "(11) 98567-4210");
    insert into tb_classe (nomeCargo, setor, telefone) values ("Desenvolvedor Back End", "Desenvovimento de Aplicações", "(11) 97451-8695");
    insert into tb_classe (nomeCargo, setor, telefone) values ("Engenheiro de Qualidade de Software", "Qualidade e Testes", "(11) 97451-1452");
    insert into tb_classe (nomeCargo, setor, telefone) values ("Cientista de Dados", "Engenharia de Dados", "(11) 97325-1452");
    insert into tb_classe (nomeCargo, setor, telefone) values ("Analista de Negócios", "Bussiness", "(11) 96532-1752");
    
 -- INSERTS tb_racaPersonagem
 
    insert into racaPersonagem (nomeRaca) values ("Anão");
    insert into racaPersonagem (nomeRaca) values ("Elfo");
    insert into racaPersonagem (nomeRaca) values ("Halfling");
    insert into racaPersonagem (nomeRaca) values ("Humano");
    insert into racaPersonagem (nomeRaca) values ("Gnomo");
    insert into racaPersonagem (nomeRaca) values ("Meio-Orc");

-- INSERTS tb_classePersonagem

    insert into classePersonagem (nomeClasse) values ("Bárbaro");
    insert into classePersonagem (nomeClasse) values ("Bardo");
    insert into classePersonagem (nomeClasse) values ("Bruxo");
    insert into classePersonagem (nomeClasse) values ("Clérigo");
    insert into classePersonagem (nomeClasse) values ("Druida");
    insert into classePersonagem (nomeClasse) values ("Ladino");

-- INSERTS tb_sexoPersonagem

	insert into sexoPersonagem (tipoSexo) values ("F");
    insert into sexoPersonagem (tipoSexo) values ("M");
    
-- INSERTS tb_personagem

    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Ugovras", 1, 2, 2, 2500, 1300, 3);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Oharad", 2, 6, 3, 1450, 1000, 1);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Equam", 1, 5, 4, 1200, 1000, 2);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Anydae", 2, 1, 1, 1700, 1100, 4);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Ewaelle", 1, 3, 5, 2100, 1300, 5);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Uzogaell", 2, 4, 6, 1600, 1300, 1);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Nivile", 1, 2, 1, 1800, 1200, 2);
    insert into tb_personagem (nomePers, sexoPers, racaPers, classePers, poderAtaque, poderDefesa, idCargo) values ("Chodeis", 2, 4, 3, 2200, 1500, 4);
    
    select * from tb_personagem;
    
  -- Faça um select que retorne os funcionários com o poder de ataque maior do que 2000.
	select * from tb_personagem
    where poderAtaque > 2000;
    
 -- Faça um select trazendo  os funcionários com poder de defesa entre 1000 e 2000.   
    select * from tb_personagem
    where poderDefesa between 1000 and 2000;
    
 -- Faça um select  utilizando LIKE buscando os personagens com a letra C.   
    select * from tb_personagem
    where nomePers like "C%";

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
    select * from tb_personagem
    where classePers = 1;
    
-- Inner Join
	select *
    from tb_personagem
    inner join tb_classe on tb_classe.idCargo = tb_personagem.idCargo;
    