use mydb;

INSERT INTO `mydb`.`TB_cliente` (`id_cliente`, `numCelular`, `nomeCliente`, `dataCadastro`) VALUES
(1, '11987654321', 'João da Silva', NOW()),
(2, '11987654322', 'Maria Oliveira', NOW()),
(3, '11987654323', 'José Santos', NOW()),
(4, '11987654324', 'Ana Souza', NOW());

INSERT INTO `mydb`.`TB_cargo` (`id_cargo`, `nomeCargo`) VALUES
(1, 'Garçom'),
(2, 'Supervisor'),
(3, 'Pizzaiolo'),
(4, 'Atendente de balcão');

INSERT INTO `mydb`.`TB_usuario` (`id_usuario`, `login`, `senha`, `nome`, `dataCadastro`, `TB_cargo_id_cargo`) VALUES
(1, 'joao.silva', 'senha123', 'João Silva', NOW(), 1),
(2, 'maria.oliveira', 'senha456', 'Maria Oliveira', NOW(), 1),
(3, 'jose.santos', 'senha789', 'José Santos', NOW(), 2),
(4, 'ana.souza', 'senhaabc', 'Ana Souza', NOW(), 4),
(5, 'carlos.almeida', 'senha123abc', 'Carlos Almeida', NOW(), 3);

INSERT INTO `mydb`.`TB_pagamento` (`id_pagamento`, `metodoPagamento`, `dinheiro`) VALUES
(1, 'Cartão de crédito', 0),
(2, 'Cartão de débito', 0),
(3, 'Dinheiro', 0),
(4, 'Pix', 0),
(5, 'Cheque', 0);

INSERT INTO `mydb`.`TB_impressora` (`id_impressora`, `nomeImpressora`, `nomeLocalImpressora`, `modeloImpressora`) VALUES
(1, 'Impressora HP Cozinha', 'Cozinha', 'HP LaserJet Pro MFP M428fdw'),
(2, 'Impressora Epson Pratos', 'Pratos', 'Epson TM-T20'),
(3, 'Impressora HP Balcão', 'Balcão', 'HP OfficeJet Pro 8025');

INSERT INTO `mydb`.`TB_cartao` (`id_cartao`, `data_entrada`, `data_saida`, `TB_cliente_id_cliente`, `TB_pagamento_id_pagamento`) VALUES 
(1, '2023-04-06 10:00:00', '2023-04-06 12:00:00', 1, 1),
(2, '2023-04-06 11:00:00', '2023-04-06 13:00:00', 2, 2),
(3, '2023-04-06 12:00:00', '2023-04-06 14:00:00', 3, 3),
(4, '2023-04-06 13:00:00', '2023-04-06 15:00:00', 4, 4),
(5, '2023-04-06 10:00:00', '2023-04-06 11:30:00', 3, 5);

INSERT INTO `mydb`.`TB_comanda` (`id_comanda`, `situacao`, `dataCadastro`, `numeroMesa`, `TB_cartao_id_cartao`, `TB_usuario_id_usuario`, `TB_impressora_id_impressora`) VALUES
(1, 'finalizada', '2023-03-31 14:02:00', 'M001', 1, 4, 1),
(2, 'Fazer', NOW(), 'M002', 2, 1, 2),
(3, 'finalizada', '2023-04-07 13:45:53', 'M003', 3, 4, 3),
(4, 'Fazer', NOW(), 'M004', 4, 1, 1),
(5, 'cancelada', '2023-03-07 13:45:53', 'M005', 4, 3, 2),
(6, 'finalizada', NOW(), 'M006', 1, 4, 3),
(7, 'Fazer', NOW(), 'M007', 2, 2, 1),
(8, 'cancelada', NOW(), 'M008', 3, 3, 2),
(9, 'Fazer', NOW(), 'M009', 4, 1, 3);

INSERT INTO `mydb`.`TB_tipoProduto` (`id_tipoProduto`, `tipoProduto`) VALUES
(1, 'Pizza'),
(2, 'Bebida');

INSERT INTO `mydb`.`TB_produto` (`id_produto`, `nomeProduto`, `descricao`, `preco`, `dataRegistro`, `TB_tipoProduto_id_tipoProduto`) VALUES
(1, 'Pizza de Calabresa', 'Pizza de Calabresa com mussarela, cebola e azeitonas', 35.90, NOW(), "1"),
(2, 'Pizza de Frango', 'Pizza de Frango com mussarela, milho e bacon', 33.50, NOW(), "1"),
(3, 'Pizza de Quatro Queijos', 'Pizza de Quatro Queijos com mussarela, parmesão, provolone e gorgonzola', 38.00, NOW(), "1"),
(4, 'Pizza de Mussarela', 'Pizza de Mussarela com molho de tomate e orégano', 28.00, '2023-03-29', "1"),
(5, 'Pizza de Pepperoni', 'Pizza de Pepperoni com mussarela, molho de tomate e pepperoni', 36.50, NOW(), "1"),
(6, 'Coca-Cola Lata', 'Refrigerante Coca-Cola em lata (350 ml)', 4.50, NOW(), "2"),
(7, 'Água Mineral', 'Garrafa de água mineral (500 ml)', 3.00, NOW(), "2");

INSERT INTO `mydb`.`TB_tipoRelatorio` (`id_tipoRelatorio`, `tipoRelatorio`) VALUES 
(1, 'Relatório de Consumo do Cartão de Comanda'), 
(2, 'Relatório de Vendas e Cálculo da Comissão'), 
(3, 'Relatório de Vendas por Mercadoria');

INSERT INTO `mydb`.`TB_relatorio` (`id_relatorio`, `dataRelatorio`, `TB_tipoRelatorio_id_tipoRelatorio`) VALUES 
(1, '2023-04-06', 1),
(2, '2023-04-06', 2),
(3, '2023-04-06', 3);

INSERT INTO `mydb`.`TB_comandaProduto` (`id_comandaProduto`,`TB_comanda_id_comanda`, `TB_produto_id_produto`, `quantia`, `precoDia`) VALUES
(1, 1, 1, 5, 35.20),
(2, 1, 2, 1, 33.20),
(3, 1, 3, 5, 39.90),
(4, 2, 2, 4, 28.50),
(5, 2, 4, 3, 35.20),
(6, 3, 3, 2, 32.75),
(7, 3, 4, 3, 37.40),
(8, 3, 5, 1, 20.00),
(9, 4, 1, 6, 35.20),
(10, 4, 2, 2, 31.20),
(11, 4, 6, 1, 39.20),
(12, 5, 1, 4, 34.90),
(13, 5, 4, 2, 29.20),
(14, 6, 2, 1, 27.90),
(15, 7, 5, 2, 30.60);

INSERT INTO `mydb`.`TB_comandaRelatorio` (`id_comandaRelatorio`,`TB_comanda_id_comanda`, `TB_relatorio_id_relatorio`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 9, 3);