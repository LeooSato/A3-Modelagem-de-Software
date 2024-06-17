SELECT AVG(DATEDIFF(dataDevolucao, dataEmprestimo)) AS media_dias_emprestimo
FROM Emprestimo
WHERE statusDevolucao = 'Returned';
