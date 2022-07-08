CREATE DATABASE maternidade;

create table mae(	id int identity,	nome varchar(50) not null	constraint Pk_mae primary key (id));

create table bebe(	id int identity,	nome varchar(50) not null,	data_nascimento date not null,	hora_nascimento time not null,	id_mae int not null	constraint Pk_bebe primary key (id)	constraint Fk_mae foreign key (id_mae)	references mae(id));

insert into mae (nome)values	('Helena'),	('Alice'),	('Laura'),	('Manuela'),	('Valentia'),	('Sophia'),	('Isabella'),	('Heloísa'),	('Luiza'),	('Júlia'),	('Lorena'),	('Lívia'),	('Maria Luísa'),	('Cecília'),	('Eloá'),	('Mãe 16'),	('Giovanna'),	('Maria Clara'),	('Maria Eduarda'),	('Mariana'),	('Lara'),	('Beatriz'),	('Antonella'),	('Maria Júlia'),	('Emanuelly'),	('Isadora'),	('Ana Clara'),	('Melissa'),	('Ana Luiza');

insert into bebe (nome, data_nascimento, hora_nascimento, id_mae)values	('Miguel', '2022-03-01', '14:00:00', 1),	('Arthur', '2022-03-27', '01:00:00', 2),	('Théo', '2022-03-29', '05:47:00', 3),	('Heitor', '2022-04-05', '02:00:00', 4),	('Gael', '2022-04-05', '02:00:00', 5),	('Davi', '2022-04-05', '02:00:00', 6),	('Bernardo', '2022-05-06', '08:00:00', 7),	('Gabriel', '2022-05-15', '09:00:00', 8),	('Ravi', '2022-05-06', '12:00:00', 9),	('Noah', '2022-07-12', '15:00:00', 10),	('Samuel', '2022-07-25', '16:00:00', 11),	('Pedro', '2022-07-26', '10:00:00', 12),	('Benício', '2022-07-29', '17:42:00', 13),
	('Benjamin', '2022-07-29', '18:11:00', 14),	('Matheus', '2022-08-01', '11:11:00', 15),	('Isaac', '2022-08-01', '11:11:00', 16),	('Anthony', '2022-08-05', '11:12:00', 17),	('Joaquim', '2022-08-12', '05:22:00', 18),	('Lucas', '2022-08-12', '08:29:00', 19),	('Lorenzo', '2022-08-27', '08:31:00', 20),	('Rafael', '2022-08-27', '13:14:00', 21),	('Nicolas', '2022-08-28', '13:16:00', 22),	('Henrique', '2022-08-28', '19:01:00', 23),	('Murilo', '2022-08-30', '23:59:00', 24),	('João Miguel', '2022-08-30', '23:40:00', 25),	('Lucca', '2022-08-31', '23:12:00', 26),	('Guilherme', '2022-08-31', '10:12:00', 27),	('Henry', '2022-08-31', '13:19:00', 28),	('Bryan', '2022-08-31', '12:57:00', 29);

	select	b.nome as 'Nome do bebê',	m.nome as 'Nome da mãe',	b.data_nascimento as 'Data nascimento'	from bebe b, mae m		where		b.id_mae = m.id		and b.data_nascimento			between '2022-06-01' and '2022-07-30'	order by b.nome asc;

	select	b.nome as 'Nome do bebê',	m.nome as 'Nome da mamãe',	b.data_nascimento as 'Data nascimento'	from bebe b, mae m		where		b.id_mae = m.id	order by m.nome asc;

select	b.nome as 'Nome do bebê',	m.nome as 'Nome da mamãe',	b.data_nascimento as 'Data nascimento'	from bebe b, mae m		where			b.id_mae = m.id			and m.nome like 'Eloá';

--Adicione os seguintes valores na tabela Mamãe
insert into mae (nome) values('Rosanea'),('Eliane'),('Vanusa'),('Eduarda'),('Monique');

--Adicione os seguintes valores na tabela Bebê
insert into bebe (nome, data_nascimento, hora_nascimento, id_mae)values('Caroline', '2022-09-08', '14:00:00', 30),('Iasmin', '2022-09-27', '01:00:00', 31),('Maíra', '2022-09-29', '05:47:00', 32),('Eloar', '2022-10-05', '02:00:00', 33),('Patrícia', '2022-11-05', '02:00:00', 34);
--Todas as bebês nascidas entre 01/05/2022 e 30/10/2022 que não possua uma mãe cadastrada no banco de dados.
	
SELECT b.id_mae, m.id,
b.hora_nascimento as 'Hora de nascimento',b.nome as 'Nome do bebê',m.nome as 'Nome da mãe',b.data_nascimento as 'Data nascimento'
FROM bebe as b
LEFT JOIN mae as m
                on b.id_mae = m.id
WHERE m.id is null
and b.data_nascimento			between '2022-05-01' and '2022-10-30'	order by b.nome asc;--Todos os bebês por ordem alfabética 	select	b.nome as 'Nome do bebê',	m.nome as 'Nome da mamãe',	b.data_nascimento as 'Data nascimento'	from bebe b, mae m		where		b.id_mae = m.id	order by m.nome asc;--Todos os bebês que nasceram no mesmo horário	select 	b.nome as 'Nome do bebê',	b2.nome as 'Nome do bebê 2',	b.hora_nascimento as 'Horário de nascimento',	b2.hora_nascimento as 'Horário de nascimento 2'	from bebe as b	inner join bebe as b2		on b.hora_nascimento = b2.hora_nascimento		where		b.id <> b2.id;-- Todos os bebês que nasceram entre 22:00 e 5:00, que não possuem mãe no cadastro.	select	b.nome as 'Nome do bebê',	b.data_nascimento as 'Data nascimento'	from bebe b		where		b.hora_nascimento			between '5:00:00' and '22:00:00'			and b.id_mae = null	order by b.nome asc; --Todas as mamães que possuem cadastro entre 01/05/2022 e 30/10/2022, mas não possuem bebês cadastrados no banco de dados.
	select 
	m.nome as 'Nome da mãe'
	from bebe b
	right join mae m
	on b.id_mae = m.id
	where b.id_mae is null
	and b.data_nascimento between '2022-05-01' and '2022-10-30'; 

--Todas as mamães que possuem cadastro, mas com bebês cadastrados  01/05/2022 e 30/07/2022 no banco de dados.
select 
	m.nome as 'Nome da mãe',
	b.nome as 'Nome do bebê',
	b.data_nascimento as 'Data de nascimento'
	from bebe b
	inner join mae m
	on b.id_mae = m.id 
	where
	b.data_nascimento between '2022-05-01' and '2022-07-30'; 