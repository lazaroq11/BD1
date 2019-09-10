/* Dados de uma escola // NOME ESCOLA, ENDERECO(CEP, CIDADE, BAIRRO E NUMERO), TELEFONE(falta fazer) E SITE*/
SELECT nome_escola, site, numero, cep, nome_cidade, nome_bairro, numero_tel
FROM escola inner join endereco on escola.id_endereco = endereco.id_endereco
inner join bairro on endereco.id_bairro = bairro.id_bairro 
inner join cidade on cidade.codigo_cidade = bairro.codigo_cidade
inner join escola on escola.id_telefone = telefone.id_telefone
where bairro.nome_bairro like 'Uruguai';


/* Quantidade de escolas por cidade*/
SELECT count(*) FROM escola inner join endereco on escola.id_endereco = endereco.id_endereco
 inner join bairro on endereco.id_bairro = bairro.id_bairro inner join cidade on cidade.codigo_cidade = bairro.codigo_cidade
 WHERE cidade.nome_cidade like 'Salvador';
 
 
 /*Vagas disponíveis por série em uma escola*/
 SELECT nome_escola, descricao_serie, numero_vagas FROM serie 
 inner join escola on escola.id_escola = serie.id_escola 
 WHERE serie.numero_vagas 


  /*Alunos em cada escola por serie*/
  SELECT nome_aluno, nome_escola, descricao_serie FROM  aluno_matriculado 
 inner join matricula  on aluno_matriculado.numero_matricula = matricula.numero_matricula 
 inner join serie on matricula.id_serie = serie.id_serie
 inner join escola on serie.id_escola = escola.id_escola;
 
 /*Escolas que precisam de mais vagas por serie*/
 SELECT	count(nome_aluno) FROM serie 
 inner join endereco on aluno_matriculado.id_endereco = escola.id_endereco
 inner join escola on escola.id_escola = serie.id_escola;
 
 
 
 /*Pré matrículas solicitadas */
 SELECT *FROM solicitacao_matricula
 
 

