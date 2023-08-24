-- Criação da tabela de usuários
CREATE TABLE IF NOT EXISTS users (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `img` VARCHAR(255) NULL
);

-- Inserção de dados iniciais na tabela de usuários
INSERT INTO users (username, email, password)
VALUES
  ('yoda', 'yoda@example.com', 'backendsereu'),
  ('luke', 'luke@example.com', 'olhameusabeazul');

-- Criação da tabela de posts
CREATE TABLE IF NOT EXISTS posts (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(255) NOT NULL,
  `desc` TEXT NOT NULL,
  `img` VARCHAR(255),
  `cat` VARCHAR(255),
  `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `uid` INT NOT NULL,
  FOREIGN KEY (`uid`) REFERENCES `users`(`id`)
);

