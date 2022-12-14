-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

LIMIT 100

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped' --Leia-se >  selecione todas as colunas na tabela silver_olist.pedido onde o pedido seja igual a Shipped.

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped' 
AND year(dtPedido) = '2018'

--Leia-se > selecione todas as colunas na tabela silver_olist.pedido onde o pedido seja igual a Shipped e o ano seja igual a 2018. 

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

--Leia-se >  selecione todas as colunas na tabela silver_olist.pedido onde o pedido seja igual a Shipped ou Canceled e o ano seja igual a 2018. 

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

--Leia-se >  selecione todas as colunas na tabela silver_olist.pedido onde o pedido seja igual a Shipped ou Canceled e o ano seja igual a 2018. 

-- COMMAND ----------

SELECT * ,
        datediff(dtEstimativaEntrega,dtAprovado) AS diffAprovadoPrevisao

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega,dtAprovado) > 30
--Leia-se >  selecione todas as colunas na tabela silver_olist.pedido onde o pedido seja igual a Shipped ou Canceled e o ano seja igual a 2018 e a diferença de data entre a estimativa e a aprovaçaõ seja maior que 30 dias. 
