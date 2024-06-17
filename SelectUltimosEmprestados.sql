SELECT Membro.nome, Livro.titulo, Emprestimo.dataEmprestimo
FROM Emprestimo
JOIN Membro ON Membro.id = Emprestimo.idMembro
JOIN Livro ON Livro.id = Emprestimo.idLivro
ORDER BY Emprestimo.dataEmprestimo DESC
LIMIT 10;
