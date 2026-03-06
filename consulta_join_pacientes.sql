SELECT 
    p.nome AS paciente,
    pr.nome AS profissional,
    s.nome_servico,
    a.data_agendamento
FROM agendamentos a
JOIN pacientes p 
    ON p.id = a.paciente_id
JOIN profissionais pr 
    ON pr.id = a.profissional_id
JOIN servicos s 
    ON s.id = a.servico_id;