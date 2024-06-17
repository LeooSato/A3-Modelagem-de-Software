SELECT Membro.nome, COUNT(*) AS total_emprestimos
FROM Membro
JOIN Emprestimo ON Membro.id = Emprestimo.idMembro
GROUP BY Membro.nome
ORDER BY total_emprestimos DESC;
