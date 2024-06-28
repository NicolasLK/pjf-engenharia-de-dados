# E-commerce Insight Solutions

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Nossa missão é capacitar marcas a tomar decisões informadas que não só aumentem as vendas, mas também otimizem a experiência do cliente e fortaleçam sua posição competitiva no mercado digital. Com uma abordagem personalizada e orientada para resultados, estamos comprometidos em impulsionar o crescimento sustentável e a inovação no universo do comércio eletrônico(e-commerce).

## Objetivo do projeto

O objetivo deste projeto é desenvolver um pipeline de dados automatizado que coleta, processa e torne possivel a analise deles. Os dados originais são do Dataset [Brazilian E-Commerce](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), para ser possivel utiliza-los, foi necessario armazená-los em um banco relacional. Utilizaremos esses dados para criar as seguintes analises:

* Vendas: Será informado o volume, vendedores, valor medio do frete, valor total do frete e etc;
* Entregas: Será informado o tempo médio em dias, volume médio produtos, volume total produtos, massa média produtos e massa total produtos.


Consulte **[Implantação](#-implanta%C3%A7%C3%A3o)** para saber como implantar o projeto.


## Origem dos dados

Origem dos dados utilizados no decorrer do projeto:

![image](https://github.com/NicolasLK/pjf-engenharia-de-dados/assets/79061705/e66206ce-d4ae-433d-aebe-d11ff93f7b8e)


## Desenho de Arquitetura

Desenho de representação da arquitetura utilizada:

![image](https://github.com/NicolasLK/pjf-engenharia-de-dados/assets/79061705/41aa378b-014f-4338-b8ea-04b41a307a47)



## Pré-requisitos

De que coisas você precisa para instalar o software e como instalá-lo?

1. **Python 3.8+**
    - Instale o Python a partir do [site oficial](https://www.python.org/).
    - Verifique a instalação:
      ```bash
      python --version
      ```

2. **Apache Airflow**
    - Instale via pip:
      ```bash
      pip install apache-airflow
      ```

3. **PostgreSQL**
    - Siga as instruções de instalação para o seu sistema operacional no [site oficial](https://www.postgresql.org/download/).

4. **Apache Spark**
    - Baixe e instale o Apache Spark a partir do [site oficial](https://spark.apache.org/downloads.html).

5. **Databricks**
    - Crie uma conta no [Databricks](https://www.databricks.com/) e configure um cluster.

6. **Amazon S3**
    - Crie uma conta na [AWS](https://aws.amazon.com/) e configure um bucket S3.

7. **MKDocs**
    - Instale via pip:
      ```bash
      pip install mkdocs
      ```

8. **Microsoft Power BI**
    - Baixe e instale o Power BI Desktop a partir do [site oficial](https://www.microsoft.com/pt-br/power-platform/products/power-bi).

9. **Ferramentas Adicionais**
    - Para colaborar e criar diagramas, você pode usar o [FigJam Board](https://www.figma.com/pt-br/figjam/) e o [draw.io](https://app.diagrams.net/).



## Implantação

O conjunto de dados inclui informações de 100 mil pedidos realizados entre 2016 e 2018 em diversos mercados no Brasil. Ele permite a visualização dos pedidos sob várias dimensões, como status do pedido, preço, pagamento, desempenho do frete, localização do cliente, atributos do produto e comentários escritos pelos clientes. Além disso, o projeto inclui um conjunto de dados de geolocalização que relaciona códigos postais brasileiros com coordenadas de latitude e longitude.

<p align="center">
  <img src="https://github.com/NicolasLK/pjf-engenharia-de-dados/assets/79061705/ccf0d47f-61cd-419c-a660-e027d88f16c4" alt="Imagem 1" width="45%">
  <img src="https://github.com/NicolasLK/pjf-engenharia-de-dados/assets/79061705/71966f23-61eb-4397-853a-b20dcfe1906f)" alt="Imagem 2" width="45%">
</p>


## Ferramentas Utilizadas

Ferramentas utilizadas para a construção deste projeto:

* [Apache Airflow](https://airflow.apache.org/) - Uma plataforma criada pela comunidade para programar, agendar e monitorar fluxos de trabalho de maneira programática.
* [PostgreSQL](https://www.postgresql.org/) - Um poderoso sistema de banco de dados relacional de objeto de código aberto, com mais de 35 anos de desenvolvimento ativo, conhecido por sua confiabilidade, robustez e desempenho.
* [Databricks](https://www.databricks.com/br/try-databricks?scid=7018Y000001Fi0cQAC&utm_medium=paid+search&utm_source=google&utm_campaign=19829725165&utm_adgroup=147439757256&utm_content=trial&utm_offer=try-databricks&utm_ad=665998511913&utm_term=databricks&gad_source=1&gclid=CjwKCAjwm_SzBhAsEiwAXE2Cv2wct2yXMQHejSEqPVUf-Wx0c01P6LW0UXxH_mWjZbA3V2I3LCvZFRoCn_kQAvD_BwE#account) - Uma plataforma para trabalhar com o Spark, que fornece gerenciamento automatizado de cluster e notebooks.
* [Apache Spark](https://spark.apache.org/) - Um mecanismo multilíngue para execução de engenharia de dados, ciência de dados e aprendizado de máquina em máquinas ou clusters de nó único.
* [Amazon S3](https://aws.amazon.com/pt/s3/) - Armazenamento de objetos construído para armazenar e recuperar qualquer volume de dados de qualquer local.
* [Python](https://www.python.org/) - Uma linguagem de programação de alto nível, interpretada, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte.
* [FigJam Board](https://www.figma.com/pt-br/figjam/) - Uma ferramenta colaborativa de brainstorming e planejamento visual baseada no navegador, projetada para facilitar o trabalho em equipe e a criação de ideias.
* [draw.io](https://app.diagrams.net/) - Um software de desenho gráfico multiplataforma desenvolvido em HTML5 e JavaScript, usado para criar diagramas como fluxogramas, wireframes, diagramas UML, organogramas e diagramas de rede.
* [MKDocs](https://www.mkdocs.org/) - Um gerador de sites estáticos projetado para construir documentação de projetos.
* [Microsoft Power BI](https://www.microsoft.com/pt-br/power-platform/products/power-bi) - Um serviço de análise de negócios e análise de dados da Microsoft.


## Versão

Fale sobre a versão e o controle de versões para o projeto. Para as versões disponíveis, observe as [tags neste repositório](https://github.com/suas/tags/do/projeto). 

## Autores

Mencione todos aqueles que ajudaram a levantar o projeto desde o seu início

<<<<<<< HEAD

* [Henrique Angar](https://github.com/HenriqueAngar) - *DESENVOLVIMENTO*
* [Joel Francisco](https://github.com/JoelFrancisco) - *DESENVOLVIMENTO*
* [Juliano Felipe](https://github.com/julianocfelipe) - *DOCUMENTAÇÃO*
* [Lorenzo Dal Bó](https://github.com/LorenzoDalBo) - *DOCUMENTAÇÃO*
* [Elói Matos](https://github.com/EloiMatos) - *DESENVOLVIMENTO* 
* [Nicolas](https://github.com/NicolasLK) - *DOCUMENTAÇÃO*
* [Rafael Castro](https://github.com/RafaelDaSilvaCastro) - *DOCUMENTAÇÃO*
* [Yuri Boppre](https://github.com/YuriBoppre) - *DESENVOLVIMENTO*



=======
* [Henrique Angar](https://github.com/HenriqueAngar) - *Desenvolvimento*
* [Joel Francisco](https://github.com/JoelFrancisco) - *Desenvolvimento*
* [Juliano Felipe](https://github.com/julianocfelipe) - *Documentação*
* [Lorenzo Dal Bó](https://github.com/LorenzoDalBo) - *Documentação*
* [Elói Matos](https://github.com/EloiMatos) - *Desenvolvimento* 
* [Nicolas](https://github.com/NicolasLK) - *Documentação*
* [Rafael Castro](https://github.com/RafaelDaSilvaCastro) - *Documentação*
* [Yuri Boppre](https://github.com/YuriBoppre) - *Desenvolvimento*
>>>>>>> 603411359998b9b1205fc6a1e87548ae562787d6

Você também pode ver a lista de todos os [colaboradores](https://github.com/usuario/projeto/colaboradores) que participaram deste projeto.

## Referências

### Apache Airflow
- [Documentação Oficial](https://airflow.apache.org/docs/)
- [Tutorial de Introdução](https://airflow.apache.org/docs/apache-airflow/stable/start.html)

### PostgreSQL
- [Documentação Oficial](https://www.postgresql.org/docs/)
- [Tutorial de Introdução](https://www.postgresqltutorial.com/)

### Databricks
- [Documentação Oficial](https://docs.databricks.com/)
- [Tutorial de Introdução](https://databricks.com/getting-started)

### Apache Spark
- [Documentação Oficial](https://spark.apache.org/documentation.html)
- [Guia de Iniciação](https://spark.apache.org/docs/latest/quick-start.html)

### Amazon S3
- [Documentação Oficial](https://docs.aws.amazon.com/s3/index.html)
- [Guia de Iniciação](https://docs.aws.amazon.com/AmazonS3/latest/gsg/GetStartedWithS3.html)

### Python
- [Documentação Oficial](https://docs.python.org/3/)
- [Tutorial de Introdução](https://docs.python.org/3/tutorial/index.html)

### draw.io
- [Documentação Oficial](https://www.diagrams.net/documents)
- [Guia de Iniciação](https://www.diagrams.net/doc/starting/what-is-diagrams-net)

### MKDocs
- [Documentação Oficial](https://www.mkdocs.org/user-guide/)
- [Guia de Iniciação](https://www.mkdocs.org/getting-started/)

### Microsoft Power BI
- [Documentação Oficial](https://docs.microsoft.com/power-bi/)
- [Guia de Iniciação](https://docs.microsoft.com/power-bi/fundamentals/power-bi-overview)
