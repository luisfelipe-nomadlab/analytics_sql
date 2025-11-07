-- =========================================
-- EDA SQL – Dataset: credito
-- =========================================

-- 1. Total de registros
SELECT COUNT(*) AS total_registros
SELECT * FROM credito_ds;


-- 2. Valores distintos por coluna
SELECT DISTINCT escolaridade FROM credito_ds;
SELECT DISTINCT estado_civil FROM credito_ds;
SELECT DISTINCT tipo_cartao FROM credito_ds;

-- 3. Contagem de registros por salário anual
SELECT salario_anual,
       COUNT(*) AS qtd
       FROM credito_ds
       GROUP BY salario_anual
       ORDER BY qtd DESC;

       -- 4. Contagem de registros por sexo
       SELECT sexo,
              COUNT(*) AS qtd
              FROM credito_ds
              GROUP BY sexo;

              -- 5. Estatísticas de idade por sexo
              SELECT sexo,
                     AVG(idade) AS media_idade,
                            MIN(idade) AS idade_minima,
                                   MAX(idade) AS idade_maxima
                                   FROM credito_ds
                                   GROUP BY sexo;

                                   -- 6. Transações nos últimos 12 meses (mínimo e máximo)
                                   SELECT MIN(valor_transacoes_12m) AS transacao_minima,
                                          MAX(valor_transacoes_12m) AS transacao_maxima
                                          FROM credito_ds;

                                          -- 7. Estatísticas de valor de transações 12 meses por sexo
                                          SELECT sexo,
                                                 MAX(valor_transacoes_12m) AS maior_valor_gasto,
                                                        AVG(valor_transacoes_12m) AS media_valor_gasto,
                                                               MIN(valor_transacoes_12m) AS min_valor_gasto
                                                               FROM credito_ds
                                                               GROUP BY sexo;

                                                               -- 8. Estatísticas combinadas por sexo e salário anual
                                                               SELECT sexo,
                                                                      salario_anual,
                                                                             AVG(qtd_produtos) AS media_qts_produtos,
                                                                                    AVG(valor_transacoes_12m) AS media_valor_transacoes,
                                                                                           AVG(limite_credito) AS media_limite
                                                                                           FROM credito_ds
                                                                                           WHERE salario_anual != 'na'
                                                                                           GROUP BY sexo, salario_anual
                                                                                           ORDER BY media_valor_transacoes DESC;
                                                                                           
