/* criando o banco de dados */
create database correcaoex1;
use correcaoex1;

/* criando a tabela */
CREATE TABLE funcionarios(
codigo int not null auto_increment,
nome varchar(50) not null,
nascimento date,
salario decimal(7,2),
setor varchar(20),
primary key (codigo)
);

/*mostrar as tabelas do banco*/
show tables;

/*descrever a estrutura da tabela*/
describe funcionarios;

/* inserindo dados na tabela */
insert into funcionarios (nome, nascimento, salario, setor)
values ('Maria', '1979-01-20', 2500, 'Vendas'),
	   ('Carlos', '2001-12-10', 1000, 'Recepção'),
	   ('Ana', '1961-09-06', 3560.5, 'Financeiro'),
       ('Roberto', '2002-07-09', 1000, 'Produção'),
       ('Marta', '1991-08-25', 1200, 'Produção'),
       ('Silvia', '1987-10-30', 1500, 'Recepção'),
       ('Maria', '1951-03-13', 2450.3, 'Financeiro');

/*mostrar tabela com seus dados*/
select * from funcionarios;

/*Mostre todos os campos de todos os funcionários que ganham mais de 1100 e trabalham no setor financeiro*/
select * from funcionarios 
where salario > 1100 and setor = 'Financeiro';

/* Mostre o nome e o salário dos funcionários do setor Recepção ou Vendas */
select nome, salario from funcionarios
where setor = 'Recepção' or setor = 'Vendas';

/* Exiba o código, o nome e o salário dos funcionários nascidos depois de 10 de 
dezembro de 1990 */
select codigo, nome, salario from funcionarios
where nascimento > '1990-12-10';

/* Altere o salário do funcionário Carlos para 1500 */
update funcionarios
set salario = 1500
where codigo = 2;

/* Altere o setor da funcionária Marta para Vendas */
update funcionarios
set setor = 'Vendas'
where codigo = 5;

/*  Exclua o funcionário Carlos */
delete from funcionarios
where codigo = 2;

/* Exclua a funcionária Maria que trabalha no setor Financeiro */
delete from funcionarios
where nome = 'Maria' and setor = 'Financeiro';

/* Buscar nomes que terminam com a letra "a" 
   like = como
   % = qualquer coisa */
select * from funcionarios
where nome like '%a';

/* Ordenar por nome */
select * from funcionarios
order by nome;

/*Ordenar por data de nascimento */
select * from funcionarios
order by nascimento;

/*Ordenar por setor e salario */
select * from funcionarios
order by setor, salario;

/* Funções agregadas
count - min - max - avg - sum */

/* mostrar nome menor e maior salario */
select nome, min(salario) from funcionarios;
select nome, max(salario) from funcionarios;

/* mostrar soma de todos os salarios */
select sum(salario) from funcionarios;

/* soma total do salario do setor financeiro */
select sum(salario) from funcionarios
where setor = 'Financeiro';

/* média salarial dos funcionários */
select avg(salario) from funcionarios;