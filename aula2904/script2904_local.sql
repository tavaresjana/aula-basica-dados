start transaction;
insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario) values(1,'VICTOR SENA ICOMA','1981-10-31','M','2021-02-02','C',2800);
insert into dependente(cod_emp, nome, dt_nascimento, sexo) values(17,'LETÍCIA ICOMA','2003-12-08','F');

rollback;
commit;