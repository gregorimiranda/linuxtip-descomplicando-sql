-- Databricks notebook source
SELECT *,

    CASE 
      WHEN descUF = 'SP' THEN 'Paulista'
      WHEN descUF = 'RJ' THEN 'Fluminense'
      WHEN descUF = 'BA' THEN 'Baiano'
      ELSE 'Outros'
    END AS descGentilico    
    
    FROM silver_olist.clientes
    
    
    --Leia-se: selecione todas as colunas da tabela silver_olist e nos casos, onde descUF for igual a SP, RJ, BA, nomeie respectivamente Paulista, Fluminense e Baiano, caso contrário serão nomeados como Outros, e finalize criando uma coluna chamada descGentílico e inserindo essas informações nela.  

-- COMMAND ----------

SELECT *,

    CASE 
      WHEN descUF = 'SP' THEN 'Paulista'
      WHEN descUF = 'RJ' THEN 'Fluminense'
      WHEN descUF = 'BA' THEN 'Baiano'
      ELSE 'Outros'
    END AS descGentilico    
    
    FROM silver_olist.clientes
    
    
    --Leia-se: selecione todas as colunas da tabela silver_olist e nos casos, onde descUF for igual a SP, RJ, BA, nomeie respectivamente Paulista, Fluminense e Baiano, caso contrário serão nomeados como Outros, e finalize criando uma coluna chamada descGentílico e inserindo essas informações nela.  
