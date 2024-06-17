SELECT COUNT(*) AS total_emprestimos, 
       SUM(CASE WHEN statusDevolucao = 'Returned' THEN 1 ELSE 0 END) AS total_devolvidos,
       SUM(CASE WHEN statusDevolucao = 'Overdue' THEN 1 ELSE 0 END) AS total_atrasados,
       SUM(CASE WHEN statusDevolucao = 'Returned' THEN 1 ELSE 0 END) / COUNT(*) * 100 AS taxa_devolucao
FROM Emprestimo;
