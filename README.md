# EDA SQL – Dataset: Crédito

[![SQL Server](https://img.shields.io/badge/SQL--Server-Analysis-red.svg)](https://www.microsoft.com/sql-server)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Análise Exploratória de Dados (EDA) em SQL aplicada ao dataset **`credito_ds`**, com foco na compreensão estatística e comportamental dos clientes antes das etapas de modelagem em **Star Schema**.  
Os scripts foram desenvolvidos para execução direta em **Microsoft SQL Server**, podendo ser adaptados para outras engines SQL compatíveis.

---
## Objetivo

Identificar padrões e comportamentos relevantes nos dados de crédito, incluindo:
- Estrutura e volume do dataset;
- Distribuição de variáveis categóricas;
- Estatísticas descritivas por sexo e faixa salarial;
- Correlações básicas entre perfil do cliente e comportamento de transações.

Essa etapa de **EDA SQL** é parte integrante do pipeline **ETL + Data Modeling**, servindo como diagnóstico inicial para ajustes na modelagem e enriquecimento de features.

---
## Consultas Principais

| Nº | Análise | Descrição |
|----|----------|------------|
| 1 | **Total de registros** | Quantifica o volume geral do dataset. |
| 2 | **Valores distintos** | Lista as categorias únicas em variáveis qualitativas (`escolaridade`, `estado_civil`, `tipo_cartao`). |
| 3 | **Contagem por salário anual** | Mapeia a distribuição de clientes por faixa de renda. |
| 4 | **Distribuição por sexo** | Analisa a proporção de clientes masculinos e femininos. |
| 5 | **Estatísticas de idade por sexo** | Calcula média, mínimo e máximo de idade segmentado por gênero. |
| 6 | **Transações 12 meses** | Identifica valores mínimo e máximo de transações financeiras. |
| 7 | **Estatísticas de gasto por sexo** | Avalia a variação do valor transacionado por gênero. |
| 8 | **Análise combinada por sexo e salário** | Integra múltiplas variáveis: produtos, transações e limite de crédito. |

---
## Principais Insights Esperados

- Diferenças de comportamento financeiro entre gêneros e faixas de renda;  
- Relação entre número de produtos e valor médio de transações;  
- Identificação de grupos com limites de crédito desproporcionais à renda;  
- Indicação de outliers em volume transacional ou idade média por grupo.

---
