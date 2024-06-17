SELECT genero, COUNT(*) AS total_emprestimos
FROM Livro
JOIN Emprestimo ON Livro.id = Emprestimo.idLivro
GROUP BY genero
ORDER BY total_emprestimos DESC;
