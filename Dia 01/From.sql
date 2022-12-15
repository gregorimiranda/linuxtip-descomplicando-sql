-- Databricks notebook source
-- DBTITLE 1,Estudando o From
SELECT * FROM silver_olist.pedido
-- Leia-se selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido
       
FROM silver_olist.pedido

-- Leia-se selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
       
FROM silver_olist.pedido

-- Leia-se selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido
       
FROM silver_olist.pedido

LIMIT 5

-- Leia-se selecione 5 PEDIDOS na coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega,dtEntregue) AS qtdDiasPromessaEntrega
FROM silver_olist.pedido


