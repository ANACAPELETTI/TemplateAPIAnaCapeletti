-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`TB_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_cliente` (
  `id_cliente` INT NOT NULL,
  `numCelular` VARCHAR(11) NOT NULL,
  `nomeCliente` VARCHAR(100) NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `CPF_UNIQUE` (`id_cliente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_cargo` (
  `id_cargo` INT NOT NULL,
  `nomeCargo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_cargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_usuario` (
  `id_usuario` INT NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `TB_cargo_id_cargo` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE INDEX `id_garcon_UNIQUE` (`id_usuario` ASC) VISIBLE,
  INDEX `fk_TB_garcon_TB_cargo1_idx` (`TB_cargo_id_cargo` ASC) VISIBLE,
  CONSTRAINT `fk_TB_garcon_TB_cargo1`
    FOREIGN KEY (`TB_cargo_id_cargo`)
    REFERENCES `mydb`.`TB_cargo` (`id_cargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_pagamento` (
  `id_pagamento` INT NOT NULL,
  `metodoPagamento` VARCHAR(50) NOT NULL,
  `dinheiro` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id_pagamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_cartao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_cartao` (
  `id_cartao` INT NOT NULL,
  `data_entrada` DATETIME NOT NULL,
  `data_saida` DATETIME NOT NULL,
  `TB_cliente_id_cliente` INT NOT NULL,
  `TB_pagamento_id_pagamento` INT NOT NULL,
  PRIMARY KEY (`id_cartao`),
  INDEX `fk_TB_cartao_TB_cliente1_idx` (`TB_cliente_id_cliente` ASC) VISIBLE,
  INDEX `fk_TB_cartao_TB_pagamento1_idx` (`TB_pagamento_id_pagamento` ASC) VISIBLE,
  CONSTRAINT `fk_TB_cartao_TB_cliente1`
    FOREIGN KEY (`TB_cliente_id_cliente`)
    REFERENCES `mydb`.`TB_cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_cartao_TB_pagamento1`
    FOREIGN KEY (`TB_pagamento_id_pagamento`)
    REFERENCES `mydb`.`TB_pagamento` (`id_pagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_impressora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_impressora` (
  `id_impressora` INT NOT NULL,
  `nomeImpressora` VARCHAR(50) NOT NULL,
  `nomeLocalImpressora` VARCHAR(50) NOT NULL,
  `modeloImpressora` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_impressora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_comanda` (
  `id_comanda` INT NOT NULL,
  `situacao` VARCHAR(100) NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `numeroMesa` VARCHAR(4) NOT NULL,
  `TB_cartao_id_cartao` INT NOT NULL,
  `TB_usuario_id_usuario` INT NOT NULL,
  `TB_impressora_id_impressora` INT NOT NULL,
  PRIMARY KEY (`id_comanda`),
  UNIQUE INDEX `id_cartao_UNIQUE` (`id_comanda` ASC) VISIBLE,
  INDEX `fk_TB_comanda_TB_cartao1_idx` (`TB_cartao_id_cartao` ASC) VISIBLE,
  INDEX `fk_TB_comanda_TB_garcon1_idx` (`TB_usuario_id_usuario` ASC) VISIBLE,
  INDEX `fk_TB_comanda_TB_impressora1_idx` (`TB_impressora_id_impressora` ASC) VISIBLE,
  CONSTRAINT `fk_TB_comanda_TB_cartao1`
    FOREIGN KEY (`TB_cartao_id_cartao`)
    REFERENCES `mydb`.`TB_cartao` (`id_cartao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_comanda_TB_garcon1`
    FOREIGN KEY (`TB_usuario_id_usuario`)
    REFERENCES `mydb`.`TB_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_comanda_TB_impressora1`
    FOREIGN KEY (`TB_impressora_id_impressora`)
    REFERENCES `mydb`.`TB_impressora` (`id_impressora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_tipoProduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_tipoProduto` (
  `id_tipoProduto` INT NOT NULL,
  `tipoProduto` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_tipoProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_produto` (
  `id_produto` INT NOT NULL,
  `nomeProduto` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(150) NOT NULL,
  `preco` DECIMAL(5,2) NOT NULL,
  `dataRegistro` DATETIME NOT NULL,
  `TB_tipoProduto_id_tipoProduto` INT NOT NULL,
  PRIMARY KEY (`id_produto`),
  INDEX `fk_TB_produto_TB_tipoProduto1_idx` (`TB_tipoProduto_id_tipoProduto` ASC) VISIBLE,
  CONSTRAINT `fk_TB_produto_TB_tipoProduto1`
    FOREIGN KEY (`TB_tipoProduto_id_tipoProduto`)
    REFERENCES `mydb`.`TB_tipoProduto` (`id_tipoProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_tipoRelatorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_tipoRelatorio` (
  `id_tipoRelatorio` INT NOT NULL,
  `tipoRelatorio` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_tipoRelatorio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_relatorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_relatorio` (
  `id_relatorio` INT NOT NULL,
  `dataRelatorio` DATE NOT NULL,
  `TB_tipoRelatorio_id_tipoRelatorio` INT NOT NULL,
  PRIMARY KEY (`id_relatorio`),
  INDEX `fk_TB_relatorio_TB_tipoRelatorio1_idx` (`TB_tipoRelatorio_id_tipoRelatorio` ASC) VISIBLE,
  CONSTRAINT `fk_TB_relatorio_TB_tipoRelatorio1`
    FOREIGN KEY (`TB_tipoRelatorio_id_tipoRelatorio`)
    REFERENCES `mydb`.`TB_tipoRelatorio` (`id_tipoRelatorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_comandaProduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_comandaProduto` (
  `id_comandaProduto` INT NOT NULL,
  `TB_comanda_id_comanda` INT NOT NULL,
  `TB_produto_id_produto` INT NOT NULL,
  `quantia` INT NOT NULL,
  `precoDia` DECIMAL(5,2) NOT NULL,
  INDEX `fk_TB_comandaProduto_TB_comanda1_idx` (`TB_comanda_id_comanda` ASC) VISIBLE,
  INDEX `fk_TB_comandaProduto_TB_produto1_idx` (`TB_produto_id_produto` ASC) VISIBLE,
  PRIMARY KEY (`id_comandaProduto`),
  CONSTRAINT `fk_TB_comandaProduto_TB_comanda1`
    FOREIGN KEY (`TB_comanda_id_comanda`)
    REFERENCES `mydb`.`TB_comanda` (`id_comanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_comandaProduto_TB_produto1`
    FOREIGN KEY (`TB_produto_id_produto`)
    REFERENCES `mydb`.`TB_produto` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TB_comandaRelatorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TB_comandaRelatorio` (
  `id_comandaRelatorio` INT NOT NULL,
  `TB_comanda_id_comanda` INT NOT NULL,
  `TB_relatorio_id_relatorio` INT NOT NULL,
  PRIMARY KEY (`id_comandaRelatorio`),
  INDEX `fk_TB_comandaRelatorio_TB_comanda1_idx` (`TB_comanda_id_comanda` ASC) VISIBLE,
  INDEX `fk_TB_comandaRelatorio_TB_relatorio1_idx` (`TB_relatorio_id_relatorio` ASC) VISIBLE,
  CONSTRAINT `fk_TB_comandaRelatorio_TB_comanda1`
    FOREIGN KEY (`TB_comanda_id_comanda`)
    REFERENCES `mydb`.`TB_comanda` (`id_comanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_comandaRelatorio_TB_relatorio1`
    FOREIGN KEY (`TB_relatorio_id_relatorio`)
    REFERENCES `mydb`.`TB_relatorio` (`id_relatorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
