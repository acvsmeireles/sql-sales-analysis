-- 1. Detalhamento das vendas
SELECT v.id_venda, v.data_venda, c.nome AS cliente, p.nome_produto AS produto,
       p.categoria, v.quantidade, p.preco AS preco_unitario,
       ROUND(v.quantidade * p.preco, 2) AS valor_venda
FROM vendas AS v
JOIN clientes AS c ON c.id_cliente = v.id_cliente
JOIN produtos AS p ON p.id_produto = v.id_produto
ORDER BY v.data_venda;

-- 2. Indicadores gerais
SELECT COUNT(*) AS numero_vendas,
       SUM(quantidade) AS unidades_vendidas,
       ROUND(SUM(quantidade * preco), 2) AS faturamento,
       ROUND(AVG(quantidade * preco), 2) AS ticket_medio
FROM vendas JOIN produtos USING (id_produto);

-- 3. Faturamento por mês
SELECT SUBSTR(v.data_venda, 1, 7) AS mes,
       COUNT(*) AS numero_vendas,
       ROUND(SUM(v.quantidade * p.preco), 2) AS faturamento
FROM vendas AS v JOIN produtos AS p ON p.id_produto = v.id_produto
GROUP BY SUBSTR(v.data_venda, 1, 7)
ORDER BY mes;

-- 4. Produtos por faturamento
SELECT p.nome_produto AS produto,
       SUM(v.quantidade) AS unidades_vendidas,
       ROUND(SUM(v.quantidade * p.preco), 2) AS faturamento
FROM vendas AS v JOIN produtos AS p ON p.id_produto = v.id_produto
GROUP BY p.id_produto, p.nome_produto
ORDER BY faturamento DESC;

-- 5. Clientes por valor comprado
SELECT c.nome AS cliente, c.cidade,
       COUNT(v.id_venda) AS numero_compras,
       ROUND(SUM(v.quantidade * p.preco), 2) AS valor_comprado
FROM vendas AS v
JOIN clientes AS c ON c.id_cliente = v.id_cliente
JOIN produtos AS p ON p.id_produto = v.id_produto
GROUP BY c.id_cliente, c.nome, c.cidade
ORDER BY valor_comprado DESC;

-- 6. Faturamento por categoria
SELECT p.categoria, ROUND(SUM(v.quantidade * p.preco), 2) AS faturamento
FROM vendas AS v JOIN produtos AS p ON p.id_produto = v.id_produto
GROUP BY p.categoria ORDER BY faturamento DESC;
