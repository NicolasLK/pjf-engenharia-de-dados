---
hide:
  - navigation
  - toc
---

# Projeto Engenharia de Dados

Trabalho desenvolvido para a disciplina de Engenharia de dados do Curso de Engenharia da Software da UNISATC.
A proposta do projeto e desenvolver uma pipeline de engenharia de dados...

## Objetivo do projeto

O objetivo deste projeto é desenvolver um pipeline de dados automatizado que coleta, processa e torne possivel a analise deles. Os dados originais são do seguinte _[Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)_, para ser possivel utiliza-los, foi necessario armazena-los em um banco relacional.
<br>
Utilizaremos esses dados para criar as seguintes analises:

- **Vendas**: Será informado o volume, vendedores, valor medio do frete, valor total do frete e etc;
- **Entregas**: Será informado o tempo médio em dias, volume médio produtos, volume total produtos, massa média produtos e massa total produtos.

## Integrantes

- [Henrique Angar](https://github.com/HenriqueAngar) - DESENVOLVIMENTO
- [Joel Francisco](https://github.com/JoelFrancisco) - DESENVOLVIMENTO
- [Juliano Felipe](https://github.com/julianocfelipe) - DOCUMENTAÇÃO
- [Lorenzo Dal Bó](https://github.com/LorenzoDalBo) - DOCUMENTAÇÃO
- [Elói Matos](https://github.com/EloiMatos) - DESENVOLVIMENTO
- [Nicolas L. Kaminski](https://github.com/NicolasLK) - DOCUMENTAÇÃO
- [Rafael Castro](https://github.com/RafaelDaSilvaCastro) - DOCUMENTAÇÃO
- [Yuri Boppre](https://github.com/YuriBoppre) - DESENVOLVIMENTO

## Técnologias utilizadas

- **Amazon S3**: Serviço de armazenamento de objetos;
- **Apache airFlow**: Plataforma para criar, agendar e monitorar fluxos de trabalhos;
- **Apache Spark**: Engine de processamento de dados distribuidos;
- **Draw.io**: Software de desenho gráfico multiplataforma, utilizado para criar diagramas como fluxogramas, wireframes entre outros;
- **Microsoft Power BI**: Serviço de análise de negócios e analise de dados;
- **MKDocs**: Gerador de sites estáticos com foco na montagem em documentação de projetos;
- **PostgreSQL**: Poderoso banco de dados relacional de código aberto;
- **Python**: Linguagem de programação de alto nível, interpretada de script.
- **Databricks**: Databricks é uma plataforma para trabalhar com o Spark, que fornece gerenciamento automatizado de cluster e notebooks
- **FigJam Board**: é um quadro branco para que equipes possam realizar sessões de ideação e brainstorming juntos, de forma on-line
- **SQLAlchemy==2.0.31**: Ferramenta de ORM (Mapeamento Objeto-Relacional) para Python.
- **com.amazonaws:aws-java-sdk:1.12.751**: SDK da AWS para integração de serviços AWS com aplicações Java.
- **io.delta:delta-core_2.12:1.2.1**: Implementa o Delta Lake para armazenamento de dados transacional em Apache Spark.
- **org.apache.hadoop:hadoop-aws:3.4.0**: Integração do Hadoop com os serviços AWS S3.
