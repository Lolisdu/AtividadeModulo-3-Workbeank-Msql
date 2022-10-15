CREATE DATABASE `atividadeviagem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

 CREATE TABLE `pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cpf` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `compra` (
  `id_pessoa` int DEFAULT NULL,
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `origem` varchar(30) DEFAULT NULL,
  `destino` varchar(30) DEFAULT NULL,
  `qtdade_pessoa` decimal(10,0) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


ALTER TABLE `atividadeviagem`.`compra` 
ADD INDEX `id_pessoaFK_idx` (`id_pessoa` ASC) VISIBLE;
;
ALTER TABLE `atividadeviagem`.`compra` 
ADD CONSTRAINT `id_pessoaFK`
  FOREIGN KEY (`id_pessoa`)
  REFERENCES `atividadeviagem`.`pessoa` (`id_pessoa`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
