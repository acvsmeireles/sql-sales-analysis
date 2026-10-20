# Análise de Vendas com SQL

Projeto de portfólio de análise de dados usando **SQLite** e **DB Browser for SQLite**, com dados fictícios de uma loja de eletrônicos.

## Objetivo

Explorar o desempenho de vendas, calcular indicadores e identificar produtos, clientes e categorias de maior faturamento.

## Base de dados

- `clientes`: 5 clientes fictícios.
- `produtos`: 8 produtos com categoria e preço unitário.
- `vendas`: 10 transações entre janeiro e março de 2026.

**Importante:** todos os dados são fictícios e foram criados para fins educacionais. Cada linha da tabela `vendas` representa uma transação de um único produto; o valor da venda é `quantidade × preco`. Não há descontos, devoluções nem custos operacionais no modelo.

## Resultados principais

- **Faturamento:** R$ 16.090,00
- **Vendas registradas:** 10.
- **Unidades vendidas:** 22.
- **Ticket médio por venda:** R$ 1.609,00
- **Produto com maior faturamento:** Notebook (R$ 10.500,00),

## Tecnologias e habilidades

SQLite, SQL, DB Browser for SQLite, `SELECT`, `WHERE`, `ORDER BY`, `INNER JOIN`, agregações com `SUM`, `COUNT`, `AVG` e `GROUP BY`.

## Como executar

1. Abra `analise_vendas.db` no DB Browser for SQLite.
2. Acesse **Execute SQL**.
3. Abra `sql/consultas_analise.sql` e execute **uma consulta por vez**.
4. Consulte os arquivos CSV em `resultados/` para ver os resultados já exportados.

## Organização

```text
analise_vendas.db
README.md
sql/
  consultas_analise.sql
resultados/
  detalhamento_vendas.csv
  indicadores_gerais.csv
  faturamento_mensal.csv
  faturamento_produtos.csv
  faturamento_clientes.csv
  faturamento_categorias.csv
```

## Próximos passos

Adicionar mais períodos de vendas, validar dados de entrada e criar uma visualização em Power BI.
