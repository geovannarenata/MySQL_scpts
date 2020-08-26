create database e_livraria;

use e_livraria;
  
create table livro(
	isbn varchar(500) primary key, 
    nomeLivro varchar(700),
    nomeAutor varchar(500),
    tipoLivro varchar(500),
    quantLivro int,
    valorLivro decimal(10,2));
    
    drop table livro;

insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('870108422-4', 'Mrs. Parker and the Vicious Circle', 'Sonnnie', 'Drama', 1, 55.00);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('391953408-5', 'Edmond', 'Claudian', 'Drama|Thriller', 2, 45.50);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('506125812-6', 'Dirty Pretty Things', 'Kellen', 'Crime|Drama|Thriller', 3, 58.80);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('184277963-X', 'Steve Jobs: The Lost Interview', 'Farrell', 'Documentary', 4, 56.50);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('348514792-3', 'Richard Pryor Here and Now', 'Tiebout', 'Comedy|Documentary', 5, 60.45);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('738992672-4', 'In America', 'Melisent', 'Drama|Romance', 6, 57.00);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('963280983-1', 'Tears of April (Käsky)', 'Chickie', 'Drama|Romance|War', 7, 46.50);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('265005194-9', 'Westward the Women', 'Pennie', 'Drama|Western', 8, 62.00);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('360485217-X', 'Career Opportunities', 'Elsi', 'Comedy|Romance', 9, 95.55);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('843098617-0', 'Sinister', 'Jimmie', 'Horror|Thriller', 10, 64.00);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('071514087-6', 'Nausicaä of the Valley of the Wind (Kaze no tani no Naushika)', 'Joshuah', 'Adventure|Animation|Drama|Fantasy|Sci-Fi', 11, 63.50);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('808991742-9', 'It Should Happen to You', 'Bernie', 'Comedy|Romance', 12, 42.00);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('277605427-0', 'Alien Outpost', 'Ignacius', 'Action|Sci-Fi|Thriller', 13, 41.50);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('378342225-6', 'Fear Strikes Out', 'Margarete', 'Drama', 14, 50.85);
insert into livro (isbn, nomeLivro, nomeAutor, tipoLivro, quantLivro, valorLivro) values ('262916963-4', 'Dark Eyes (Oci ciornie)', 'Vilma', 'Comedy|Drama|Romance', 15, 43.50);

select * from livro;

select * from livro 
where valorLivro > 50.00 
order by valorLivro desc;

select * from livro 
where valorLivro < 50.00 
order by valorLivro asc;
    
update livro
set nomeLivro="Teste de Atualização"
where isbn='808991742-9';

