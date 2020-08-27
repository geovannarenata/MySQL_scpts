create database db_mercado;
use db_mercado;

create table tbCategoria(
	idCategoria int auto_increment primary key,
    fornecedor varchar(100),
    nomeCategoria varchar(300) ,
    disponibilidade boolean);
    
create table tbProduto(
	idProduto int auto_increment primary key,
    nomeProduto varchar(400),
    valorProduto decimal(6,2),
    qtdeProduto int,
    marcaProduto varchar(500),
	idCategoria int ,
    FOREIGN KEY (idCategoria) references tbCategoria (idCategoria)
    );
    
    insert into tbCategoria ( fornecedor, nomeCategoria, disponibilidade) values ('P&G', 'Higiene', true);
    insert into tbCategoria ( fornecedor, nomeCategoria, disponibilidade) values ('Lacta', 'Sobremesas', true);
    insert into tbCategoria ( fornecedor, nomeCategoria, disponibilidade) values ('Kibon Ltda', 'Sorvetes', false);
    insert into tbCategoria ( fornecedor, nomeCategoria, disponibilidade) values ('Seara Ltda', 'Alimentos', true);
    insert into tbCategoria ( fornecedor, nomeCategoria, disponibilidade) values ('Veja', 'Limpeza', true);
    insert into tbCategoria ( fornecedor, nomeCategoria, disponibilidade) values ('Bombril', 'Limpeza', false);
    
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Sabonete Johnsons", 25.00, 3, 'Johnson & Johnson', 1);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Caixa de Chocolate", 8.00, 10, 'Bis', 2);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Sorvete Napolitano", 24.00, 12, 'Kibon', 3);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Mortadela", 5.29, 20, 'Seara', 4);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Detergente", 3.00, 25, 'Veja Multiuso', 5);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Lã Multiuso", 4.00, 8, 'Bombril Multiuso', 6);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Presunto", 9.00, 10, 'Seara', 4);
    insert into tbProduto (nomeProduto, valorProduto, qtdeProduto, marcaProduto, idCategoria) values ("Sapólio", 8.00, 15, 'Veja Multiuso', 5);
    
    
    select * from tbProduto
    where valorProduto > 20;
    
    Select * from tbProduto
    where valorProduto between 3.00 and 60.00;
    
    select * from tbProduto
    where nomeProduto like "S%";
    
    select * from tbProduto
    inner join tbCategoria on tbCategoria.idCategoria = tbProduto.idCategoria;
    
    select * from tbProduto 
    where idCategoria = 5;
