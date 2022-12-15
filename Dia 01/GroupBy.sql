-- Databricks notebook source
SELECT
  descUF,
  COUNT (*)

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------

SELECT
  descUF,
  COUNT (distinct idCliente) AS qtClientes

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------

SELECT
  descUF,

  COUNT (distinct idClienteUnico) AS qtClientesUnicos

FROM silver_olist.cliente

GROUP BY descUF
