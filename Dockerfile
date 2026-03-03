# Use uma tag específica para garantir a versão do Spark (3.5.0)
FROM quay.io/jupyter/pyspark-notebook:spark-3.5.0

USER root

# Instala dependências do sistema necessárias para compilação (se houver) e limpeza
RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Instalação das libs Python
# NÃO instale pyspark aqui, pois ele já existe na imagem base.
# Delta 3.2.0 é a versão correta para Spark 3.5.x

USER jovyan