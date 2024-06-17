SELECT Livro.titulo, COUNT(*) AS total_emprestimos
FROM Livro
JOIN Emprestimo ON Livro.id = Emprestimo.idLivro
GROUP BY Livro.titulo
ORDER BY total_emprestimos DESC
LIMIT 10;
