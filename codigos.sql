create database escola;

use escola;

create table aluno(
aluno_id int auto_increment not null primary key,
nome_aluno varchar(100)
);

create table disciplina(
disciplina_id int auto_increment not null primary key,
nome_disciplina varchar (100)
);
create table aluno_cursa_disciplina(
fk_disciplina_id int,
fk_aluno_id int,
ano int,
foreign key (fk_disciplina_id) references disciplina (disciplina_id) on delete restrict,
foreign key (fk_aluno_id) references aluno (aluno_id) on delete restrict 

) engine innnodb;
insert into aluno values (default,'Bernardo');
insert into aluno values (default,'Pedro');
insert into aluno values (default,'Jose');

insert into aluno (nome_aluno, aluno_id) values ('Fernanda', default);
insert into disciplina values (default,'BD1');
insert into disciplina values (default,'Games');
insert into disciplina values (default,'POO');

select * from aluno;
select * from disciplina;

insert into aluno_cursa_disciplina values (1, 1, 2023);
insert into aluno_cursa_disciplina values (1, 2, 2023);
insert into aluno_cursa_disciplina values (1, 3, 2023);

delete from aluno where aluno_id = 1;

alter table aluno_cursa_disciplina add column  aluno_cursa_disciplina

delete from aluno where aluno_id = 1;

alter table aluno_cursa_disciplina add column CH varchar (10);

alter table aluno_cursa_disciplina modify column CH varchar (10);

drop table aluno_cursa_disciplina;
drop table aluno;
drop table disciplina;






