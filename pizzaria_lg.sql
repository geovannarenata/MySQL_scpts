create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tbCategoria(
	idCategoria int auto_increment primary key,
    nomeCategoria varchar(300) ,
    tamanho varchar(100),
    disponibilidade boolean);
    
create table tbPizza(
	idPizza int auto_increment primary key,
    nomePizza varchar(400),
    valorPizza decimal(6,2),
    qtdeIngrediente int,
    ingredientesB varchar(500),
	idCategoria int ,
    FOREIGN KEY (idCategoria) references tbCategoria (idCategoria)
    );
    
    insert into tbCategoria ( nomeCategoria, tamanho, disponibilidade) values ('Salgada', 'Grande', true);
    insert into tbCategoria ( nomeCategoria, tamanho, disponibilidade) values ('Salgada', 'Média', true);
    insert into tbCategoria ( nomeCategoria, tamanho, disponibilidade) values ('Salgada', 'Broto', false);
    insert into tbCategoria ( nomeCategoria, tamanho, disponibilidade) values ('Doce', 'Grande', true);
    insert into tbCategoria ( nomeCategoria, tamanho, disponibilidade) values ('Doce', 'Média', true);
    insert into tbCategoria ( nomeCategoria, tamanho, disponibilidade) values ('Doce', 'Broto', false);
    
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Mussarela", 55.00, 3, 'Queijo mussarela, Tomate e Orégano', 1);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Portuguesa", 48.00, 4, 'Queijo mussarela, Presunto, Tomate, Ovo', 2);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Calabresa", 44.00, 2, 'Linguiça Calabresa, Cebola', 3);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Frango com Catupiry", 49.00, 2, 'Frango com Catupiry', 1);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Frango Caipira", 29.00, 2, 'Frango com Milho Verde', 1);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Atum", 34.00, 2, 'Queijo Mussarela e Atum', 1);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Chocolate", 40.00, 1, 'Chocolate ao Leite', 4);
    insert into tbPizza (nomePizza, valorPizza, qtdeIngrediente, ingredientesB, idCategoria) values ("Prestígio", 28.00, 1, 'Chocolate ao Leite com flocos de Coco', 5);
    
    select * from tbPizza
    where valorPizza > 45
    order by idPizza;
    
    Select * from tbPizza
    where valorPizza between 29 and 60;
    
    select * from tbPizza
    where nomePizza like "C%";
    
    select * from tbPizza
    inner join tbCategoria on tbCategoria.idCategoria = tbPizza.idCategoria;
    
    select * from tbPizza 
    where idCategoria = 1;
