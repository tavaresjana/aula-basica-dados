use empregados_db;
/*Extração com SubQuery*/
select * from empregado where cod_depto in(
	select cod_depto from departamento where cod_depto <5
);

/*Calculo com datas*/
select *, floor(datediff(now(), dt_nascimento) / 365) as idade from dependente; /*arredonda p baixo*/

/*todos os empregados que tem dependentes menores de 18 anos*/
select * from empregado where cod_emp in(
select cod_emp from dependente where floor(datediff(now(), dt_nascimento) / 365) <18
);