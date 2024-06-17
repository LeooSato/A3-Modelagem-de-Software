CREATE DATABASE BibliotecaComunitaria;

USE BibliotecaComunitaria;

CREATE TABLE Livro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    genero VARCHAR(255),
    anoPublicacao INT,
    status VARCHAR(50)
);

CREATE TABLE Membro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(20)
);

CREATE TABLE Emprestimo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idLivro INT,
    idMembro INT,
    dataEmprestimo DATE,
    dataDevolucao DATE,
    statusDevolucao VARCHAR(50),
    FOREIGN KEY (idLivro) REFERENCES Livro(id),
    FOREIGN KEY (idMembro) REFERENCES Membro(id)
);

CREATE TABLE Reserva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idLivro INT,
    idMembro INT,
    dataReserva DATE,
    status VARCHAR(50),
    FOREIGN KEY (idLivro) REFERENCES Livro(id),
    FOREIGN KEY (idMembro) REFERENCES Membro(id)
);

CREATE TABLE Autenticacao (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    senha VARCHAR(255),
    tipoUsuario VARCHAR(50)
);
