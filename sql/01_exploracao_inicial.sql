-- =========================================================
-- LOGISTICS SUPPLY CHAIN ANALYTICS
-- Exploração inicial da tabela soy_beans
-- Fonte: Base dos Dados
-- =========================================================


-- 01. Contagem total de registros

SELECT
    COUNT(*) AS total_registros
FROM `basedosdados.br_tase_supply_chain.soy_beans`;


-- 02. Quantidade de registros por ano

SELECT
    year,
    COUNT(*) AS quantidade_registros
FROM `basedosdados.br_tase_supply_chain.soy_beans`
GROUP BY year
ORDER BY year DESC;


-- 03. Verificação de valores nulos em year

SELECT
    COUNT(*) AS total_year_null
FROM `basedosdados.br_tase_supply_chain.soy_beans`
WHERE year IS NULL;


-- 04. Cobertura temporal

SELECT
    COUNT(DISTINCT year) AS total_anos,
    MIN(year) AS primeiro_ano,
    MAX(year) AS ultimo_ano
FROM `basedosdados.br_tase_supply_chain.soy_beans`;
