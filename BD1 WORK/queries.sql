/* Dados de uma escola // NOME ESCOLA, ENDERECO(CEP, CIDADE, BAIRRO E NUMERO), TELEFONE(falta fazer) E SITE */
SELECT nome_escola, site, numero, cep, nome_cidade, nome_bairro,numero_tel
FROM escola inner join endereco on escola.id_endereco = endereco.id_endereco
inner join bairro on endereco.id_bairro = bairro.id_bairro 
inner join cidade on cidade.codigo_cidade = bairro.codigo_cidade
inner join telefone on escola.id_telefone = telefone.id_telefone
where escola.nome_escola like 'Sao Roque';


/* Escolas disponíveis para uma determinadda série em um bairro */
select nome_escola as Nome_escola,
nome_bairro as Nome_bairro,
descricao_serie as Serie,
numero_vagas as Numero_Vagas,
site as Site
from escola inner join endereco on escola.id_endereco = endereco.id_endereco
inner join bairro on endereco.id_bairro = bairro.id_bairro
inner join serie on escola.id_escola = serie.id_escola
where nome_bairro like 'Barris' and descricao_serie like '1°A';


/* Quantidade de escolas por cidade*/
select nome_cidade, count(*) as Quant_Escolas
from escola inner join endereco on escola.id_endereco = endereco.id_endereco
inner join bairro on endereco.id_bairro = bairro.id_bairro 
inner join cidade on bairro.codigo_cidade = cidade.codigo_cidade
group by nome_cidade;
 
 
 /* Vagas disponíveis por série em uma escola */
 select nome_escola, descricao_serie, numero_vagas from serie 
 inner join escola on escola.id_escola = serie.id_escola 
 where nome_escola like 'Sao Bento' ;


  /* Alunos em cada escola por serie */
  select nome_aluno, nome_escola, descricao_serie from  aluno_matriculado 
 inner join matricula  on aluno_matriculado.numero_matricula = matricula.numero_matricula 
 inner join serie on matricula.id_serie = serie.id_serie
 inner join escola on serie.id_escola = escola.id_escola;
 
 
 /* Pré-matrículas solicitadas */
 select nome_aluno as Nome_do_aluno,
 nome_escola as Nome_da_escola,
 descricao_serie as Serie
 from solicitacao_matricula inner join escola on solicitacao_matricula.id_escola = escola.id_escola
 inner join aluno_matriculado on solicitacao_matricula.id_aluno = aluno_matriculado.id_aluno
 inner join serie on solicitacao_matricula.id_serie = serie.id_serie;
 
 
 /* Solicitações de transferência para uma determinada escola por série */
 select descricao_serie as Serie,
 nome_escola as Nome_da_escola,
 count(solicitacao_matricula.id_solicitacao) as Quant_de_solicitacoes
 from solicitacao_matricula inner join escola on solicitacao_matricula.id_escola = escola.id_escola
 inner join aluno_matriculado on solicitacao_matricula.id_aluno = aluno_matriculado.id_aluno
 inner join serie on solicitacao_matricula.id_serie = serie.id_serie
 where escola.nome_escola = 'Sao Ruins' and tipo_solicitacao = 'T'
 group by serie.descricao_serie, Nome_da_escola;
 
 /* Escolas que precisam de mais vagas por serie */
 select nome_escola, descricao_serie, count(aluno_matriculado.id_aluno) as Quant_alunos_matriculados 
 from serie inner join escola on escola.id_escola = serie.id_escola
 inner join matricula on matricula.id_serie = serie.id_serie
 inner join aluno_matriculado on aluno_matriculado.numero_matricula = matricula.numero_matricula
 group by descricao_serie, nome_escola;
 
 
 /*  Cidades que precisam de mais escolas, de acordo com a lista de espera das escolas. */
 select nome_cidade, count(id_lista_espera)
 from lista_espera inner join escola on lista_espera.id_escola = escola.id_escola
 inner join endereco on endereco.id_endereco = escola.id_endereco
 inner join bairro on bairro.id_bairro = endereco.id_bairro
 inner join cidade on bairro.codigo_cidade = cidade.codigo_cidade
 group by nome_cidade
 
 
 