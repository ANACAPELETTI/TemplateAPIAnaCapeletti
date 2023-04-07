use mydb;

# Lista as pizzas a serem feitas na cozinha e, os garçons responsáveis pelo pedido
SELECT `TB_comanda`.`id_comanda` as 'ID da comanda', 
	   `TB_produto`.`nomeProduto` as 'Nome do prato', 
       `TB_comanda`.`numeroMesa` as 'Número da mesa', 
       `TB_usuario`.`nome` as 'Nome do garçom'
	FROM TB_comanda
	JOIN TB_comandaproduto ON TB_comandaproduto.TB_comanda_id_comanda = TB_comanda.id_comanda
	JOIN TB_produto ON TB_produto.id_produto = TB_comandaproduto.TB_produto_id_produto
    JOIN TB_tipoproduto ON TB_tipoproduto.id_tipoproduto = TB_produto.TB_tipoProduto_id_tipoProduto
	JOIN TB_usuario ON TB_usuario.id_usuario = TB_comanda.TB_usuario_id_usuario
	WHERE TB_tipoproduto.tipoproduto = 'Pizza' AND 
		  TB_comanda.situacao = 'Fazer';

# Lista as bebidas a serem feitas na cozinha e, o nome dos garçons responsáveis pelo pedido
SELECT `TB_comanda`.`id_comanda` as 'ID da comanda', 
	   `TB_produto`.`nomeProduto` as 'Nome do prato', 
       `TB_comanda`.`numeroMesa` as 'Número da mesa', 
       `TB_usuario`.`nome` as 'Nome do garçom'
	FROM TB_comanda
	JOIN TB_comandaproduto ON TB_comandaproduto.TB_comanda_id_comanda = TB_comanda.id_comanda
	JOIN TB_produto ON TB_produto.id_produto = TB_comandaproduto.TB_produto_id_produto
    JOIN TB_tipoproduto ON TB_tipoproduto.id_tipoproduto = TB_produto.TB_tipoProduto_id_tipoProduto
	JOIN TB_usuario ON TB_usuario.id_usuario = TB_comanda.TB_usuario_id_usuario
	WHERE TB_tipoproduto.tipoproduto = 'Bebida' AND 
		  TB_comanda.situacao = 'Fazer';

# Consumo total de cada cartão, levando em consideração que a pizzaria ALTEROU os preços dos produtos
SELECT DISTINCT id_cartao AS 'ID do cartão',
	SUM(`TB_comandaproduto`.`quantia` * `TB_comandaproduto`.`precoDia`) as 'Valor total'
	FROM TB_cartao
	JOIN TB_comanda ON TB_comanda.TB_cartao_id_cartao = TB_cartao.id_cartao
	JOIN TB_comandaproduto ON TB_comandaproduto.TB_comanda_id_comanda = TB_comanda.id_comanda
	JOIN TB_produto ON TB_produto.id_produto = TB_comandaproduto.TB_produto_id_produto
	JOIN TB_usuario ON TB_usuario.id_usuario = TB_comanda.TB_usuario_id_usuario
    GROUP BY id_cartao;

# Consumo de cada comanda, levando em consideração que a pizzaria NÃO ALTEROU os preços dos produtos
SELECT `TB_cartao`.`id_cartao` as 'ID do cartão', 
	   `TB_produto`.`nomeProduto` as 'Nome do prato',  
       `TB_comandaproduto`.`precoDia` as 'Valor unitário do dia', 
       `TB_comandaproduto`.`quantia` as 'Quantidade', 
       (`TB_comandaproduto`.`quantia` * `TB_produto`.`preco`) as 'Valor total', 
       `TB_usuario`.`nome` as 'Nome do garçom'
	FROM TB_cartao
	JOIN TB_comanda ON TB_comanda.TB_cartao_id_cartao = TB_cartao.id_cartao
	JOIN TB_comandaproduto ON TB_comandaproduto.TB_comanda_id_comanda = TB_comanda.id_comanda
	JOIN TB_produto ON TB_produto.id_produto = TB_comandaproduto.TB_produto_id_produto
	JOIN TB_usuario ON TB_usuario.id_usuario = TB_comanda.TB_usuario_id_usuario;

# Relatório de comissão por funcionário, onde a comissão é de 3% para qualquer funcionário
SELECT DISTINCT `TB_usuario`.`nome` as 'Nome',
	SUM(`TB_comandaproduto`.`quantia` * `TB_comandaproduto`.`precoDia`) as 'Valor total',
    SUM((`TB_comandaproduto`.`quantia` * `TB_comandaproduto`.`precoDia`) * 0.03) as 'Comissão'
	FROM TB_produto
	JOIN TB_comandaproduto ON TB_comandaproduto.TB_produto_id_produto = TB_produto.id_produto
	JOIN TB_comanda ON TB_comanda.id_comanda = TB_comandaproduto.TB_comanda_id_comanda
	JOIN TB_usuario ON TB_usuario.id_usuario = TB_comanda.TB_usuario_id_usuario
	JOIN TB_tipoproduto ON TB_tipoproduto.id_tipoproduto = TB_produto.TB_tipoProduto_id_tipoProduto
    GROUP BY nome;

# Relatório de vendas por item 
SELECT `TB_produto`.`id_produto` as 'ID do produto', 
	`TB_produto`.`nomeProduto` as 'Nome do produto', 
	`TB_tipoproduto`.`tipoproduto` as 'Tipo do produto', 
	`TB_comanda`.`dataCadastro` as 'Data', 
	`TB_comandaproduto`.`precoDia` as 'Valor unitário do dia', 
    `TB_comandaproduto`.`quantia` as 'Quantidade vendida', 
	(`TB_comandaproduto`.`quantia` * `TB_comandaproduto`.`precoDia`) as 'Valor total'
	FROM TB_produto
	INNER JOIN TB_comandaproduto ON TB_comandaproduto.TB_produto_id_produto = TB_produto.id_produto
	INNER JOIN TB_comanda ON TB_comanda.id_comanda = TB_comandaproduto.TB_comanda_id_comanda
	INNER JOIN TB_usuario ON TB_usuario.id_usuario = TB_comanda.TB_usuario_id_usuario
	INNER JOIN TB_tipoproduto ON TB_tipoproduto.id_tipoproduto = TB_produto.TB_tipoProduto_id_tipoProduto;