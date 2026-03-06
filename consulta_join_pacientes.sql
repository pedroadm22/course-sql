/*CONSULTA DE NOME DO PACIENTE*/

SELECT pacientes.nome AS nome_do_paciente, profissionais.nome nome_do_profissional, servicos.nome_servico nome_do_servico
FROM agendamentos
JOIN pacientes
	ON paciente_id = agendamentos.paciente_id
JOIN profissionais 
	ON profissional_id = agendamentos.profissional_id
JOIN servicos
	ON servico_id = agendamentos.servico_id;