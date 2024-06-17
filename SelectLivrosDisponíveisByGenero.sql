SELECT genero, COUNT(*) AS total_disponiveis
FROM Livro
WHERE status = 'Available'
GROUP BY genero
ORDER BY total_disponiveis DESC;