create database db_diversos;
use db_diversos;


create table escola (
	idAluno int primary key, 
    nomeAluno varchar(300),
    idadeAluno int,
    dataNasc date,
    telefone varchar(16),
    responsavel varchar(400),
    endereco varchar(500));
    
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (01, 'Adriano Gonçalves', 13, '2007-05-15', '(11)98574-4578', 'Caroline Gonçalves', 'Rua Jardim das Flores');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (02, 'Douglas Silva', 14, '2006-07-24', '(11)97484-8596', 'Jéssica Sousa', 'Rua Beatriz Floriano');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (03, 'Janessa', 12, '2008-05-23', '(11)7458574857', 'Lucas Silva', 'Rua Dentritos Ligados');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (04, 'JVitor ', 21, '1999-05-27', '(11)7458574717', 'Felipe Fernandes', 'Rua Accubens');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (05, 'Mariana Sousa ', 12, '2008-07-10', '(11)74841717', 'Gabriel Silvano', 'Rua Lobo Frontal');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (06, 'Maria Santos ', 10, '2010-07-04', '(11)748745717', 'Gabriela de Matos', 'Rua circuito de Papez');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (07, 'Joelma Gomes Sousa ', 15, '2005-08-10', '(11) 854174574', 'Kelly Cristina', 'Rua Límbico complexo ');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (08, 'Silvana Lemos ', 12, '2008-09-05', '(11)985674152', 'Marcelo Lima', 'Rua Hipocampo extenso');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (09, 'Matheus Ribeiro ', 18, '2002-10-13', '(11)85749685', 'Letícia Glassno', 'Rua Fórnix ');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (10, 'Leonardo Batista', 22, '2007-03-30', '(11)985745857', 'Viviane Ceccato', 'Rua Fascículo');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (11, 'Renata Brum ', 10, '2010-09-08', '(11)976847542', 'Karla Lima', 'Rua Giro do Cíngulo');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (12, 'Guilherme Macial ', 12, '2008-02-12', '(11)978547862', 'Daniel Novaes', 'Rua Áreas corticais');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (13, 'Heloisa Lopes', 12, '2008-12-14', '(11)985764125', 'Priscila Martins', 'Rua Subcorticais');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (14, 'Alice Celis ', 19, '2000-07-10', '(11)986547585', 'Gleice Félix', 'Rua Entorrinal');
insert into escola( idAluno, nomeAluno, idadeAluno, dataNasc, telefone, responsavel, endereco) values (15, 'Moacir Silva ', 12, '2008-07-10', '(11)986712012', 'MArcos Santos', 'Rua Lobo Frontal');

select * from escola
where idadeAluno > 18
order by idAluno;

select * from escola
where idadeAluno < 18
order by idAluno;

select * from escola
where idadeAluno between 20 and 25
order by idAluno;

create table pet_shop(
	idAnimal int auto_increment primary key,
    nomeAnimal varchar(300),
    especieAnimal varchar(300),
    donoAnimal varchar(400),
    pesoAnimal decimal(8, 2),
    corAnimal varchar(200),
    sexoAnimal char);
    
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Billy', 'Cachorro', 'Bianca', 5.70, 'Preto', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Chewie', 'Coelho', 'Gleide', 4.0, 'Branco', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Nick', 'Cachorro', 'Tábata', 3.0, 'Preto', 'F');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Nina', 'Cachorro', 'Marcos', 6.70, 'Branco/Cinza', 'F');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('George', 'Macaco', 'Lucas', 20.80, 'Cinza', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Mel', 'Cachorro', 'Karine', 2.54,  'Preto', 'F');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Totti', 'Cachorro', 'Alice', 9.70, 'Marrom', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Bob', 'Gato', 'Laura', 1.70, 'Bege', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Liam', 'Gato', 'Beatriz', 3.0, 'Laranja', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Garfield', 'Gato', 'Jim', 10.70, 'Laranja', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Clifford', 'Cachorro', 'Vitória', 5.80, 'Vermelho', 'M');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Meridiana', 'Tartaruga', 'Paula', 0.60, 'Verde', 'F');
insert into pet_shop (nomeAnimal, especieAnimal, donoAnimal, pesoAnimal, corAnimal, sexoAnimal) values ('Thor', 'Elefante', 'Karen', 35.90, 'Cinza', 'M');

select * from pet_shop
where pesoAnimal > 10
order by idAnimal;

select * from pet_shop
where pesoAnimal < 10
order by idAnimal;

select * from pet_shop
where pesoAnimal between 10 and 40
order by idAnimal;


create table varejo(
	idProd int auto_increment primary key,
    nomeProd varchar(300),
    precoProd decimal(10,2),
    categoria varchar(300),
    marca varchar(300),
    material varchar(300),
    porte char(4));

insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Hersey Shakes', 1736.08, 'Bebidas', 'Trudeo', 'Energy', 'S');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Plasticspoonblack', 2213.46, 'Objetos', 'Blognation', 'n/a', 'M');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Cups 10oz Trans', 754.41, 'Alimentos', 'Dynazzy', 'n/a', 'XL');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Coke - Classic, 355 Ml', 1552.59, 'Bebidas', 'Abatz', 'Public Utilities', 'L');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Plaintain', 2571.97, 'Horta & Plantas', 'Riffpedia', 'Technology', 'M');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Duck - Legs', 1140.92, 'Roupas', 'Zoomzone', 'Finance', '2XL');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Chicken - Thigh, Bone In', 2262.39, 'Alimentos', 'Camimbo', 'n/a', 'S');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Lid - 16 Oz And 32 Oz', 2755.55, 'Produtos de Limpeza', 'Youspan', 'Technology', 'S');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Veal - Tenderloin, Untrimmed', 1437.99, 'Produtos de Limpeza', 'Livefish', 'n/a', 'L');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Mortadella', 1254.78, 'Alimentos', 'Browseblab', 'n/a', 'S');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Jam - Marmalade, Orange', 2543.07, 'Alimentos', 'Bluezoom', 'Capital Goods', 'XS');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Brocolinni - Gaylan, Chinese', 2864.94, 'Alimentos', 'Camimbo', 'Technology', 'M');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Muffin Hinge - 211n', 1761.15, 'Alimentos', 'Bluezoom', 'n/a', 'M');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Bar - Granola Trail Mix Fruit Nut', 2556.89, 'Bebidas', 'Eamia', 'n/a', 'M');
insert into varejo (nomeProd, precoProd, categoria, marca, material, porte) values ('Extract - Rum', 2605.55, 'Bebidas, 591 Ml', 'Photobean', 'Consumer Non-Durables', 'XS');


select * from varejo 
where nomeProd like "C%"
order by idProd;

select * from varejo 
where categoria like "Alimentos"
order by idProd;

select * from varejo 
where precoProd between 1000 and 1500
order by idProd;

select * from varejo 
where categoria like "B%"
order by idProd;