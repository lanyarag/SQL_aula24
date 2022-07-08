CREATE DATABASE maternidade;

create table mae(

create table bebe(

insert into mae (nome)

insert into bebe (nome, data_nascimento, hora_nascimento, id_mae)
	('Benjamin', '2022-07-29', '18:11:00', 14),

	select

	select

select

--Adicione os seguintes valores na tabela Mam�e
insert into mae (nome) 

--Adicione os seguintes valores na tabela Beb�
insert into bebe (nome, data_nascimento, hora_nascimento, id_mae)
--Todas as beb�s nascidas entre 01/05/2022 e 30/10/2022 que n�o possua uma m�e cadastrada no banco de dados.
	
SELECT b.id_mae, m.id,
b.hora_nascimento as 'Hora de nascimento',
FROM bebe as b
LEFT JOIN mae as m
                on b.id_mae = m.id
WHERE m.id is null
and b.data_nascimento
	select 
	m.nome as 'Nome da m�e'
	from bebe b
	right join mae m
	on b.id_mae = m.id
	where b.id_mae is null
	and b.data_nascimento between '2022-05-01' and '2022-10-30'; 

--Todas as mam�es que possuem cadastro, mas com beb�s cadastrados  01/05/2022 e 30/07/2022 no banco de dados.
select 
	m.nome as 'Nome da m�e',
	b.nome as 'Nome do beb�',
	b.data_nascimento as 'Data de nascimento'
	from bebe b
	inner join mae m
	on b.id_mae = m.id 
	where
	b.data_nascimento between '2022-05-01' and '2022-07-30'; 