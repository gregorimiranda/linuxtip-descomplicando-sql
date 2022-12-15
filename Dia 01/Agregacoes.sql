-- Databricks notebook source
select *

FROM silver_olist.cliente

LIMIT 5 


-- COMMAND ----------

SELECT 
  COUNT(*) AS qtLinhas,
  COUNT(distinct IdCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesUnicos

FROM silver_olist.cliente

WHERE descCidade = 'presidente prudente'


-- COMMAND ----------

SELECT 
  COUNT(*)

FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')


-- COMMAND ----------

SELECT 
  COUNT(*) AS qtLinhas,
  COUNT(distinct IdCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesUnicos
  
  FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT

  AVG(vlPreco)
  
FROM 
