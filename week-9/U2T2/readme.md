# U2T2

## Explicação do trabalho

Esse trabalho tem como objetivo explorar os conteúdos das semanas 7 e 8, que foram assortatividade, distâncias, componentes conectados e coeficiente de clustering. Nele, foram solicitados o cumprimento de três requisitos

- **Requisito 1:** escolher cinco redes presentes no site [SNAP](https://snap.stanford.edu/data/) para serem analisadas
- **Requisito 2:** construir e interpretar gráficos bipartidos sobre a assortatividade em relação ao grau dos nós de cada uma dessas redes
- **Requisito 3:** montar e interpretar uma tabela cujas colunas representam propriedades relativas a cada uma dessas redes, tais como quantidade de vértices, quantidade de arestas, coeficiente de assortatividade do grau, tamanho do GCC e coeficeinte de clustering

## Redes escolhidas

### High-energy physics theory citation network

Grafo direcionado que representa as citações em teoria de física de alta energia. Ele foi coletado a partir dos e-prints no arXiv. Esse grafo é valioso para estudar como os artigos na área de física de alta energia estão interconectados por meio de citações, o que pode ajudar a identificar tendências e influências na pesquisa nesse campo ao longo do tempo.

[![Link](https://img.shields.io/badge/Consultar_rede-blue?style=flat-square)](https://snap.stanford.edu/data/cit-HepTh.html)

### email-Eu-core network

Grafo direcionado que foi gerado a partir de dados de e-mails de uma grande instituição de pesquisa europeia Os dados foram anonimizados e representam informações sobre todos os e-mails enviados e recebidos entre os membros dessa instituição de pesquisa. Esse grafo é útil para analisar a comunicação por e-mail dentro de uma instituição de pesquisa específica, permitindo a compreensão de como os membros dessa instituição se comunicam entre si por meio de mensagens de e-mail.

[![Link](https://img.shields.io/badge/Consultar_rede-blue?style=flat-square)](https://snap.stanford.edu/data/email-Eu-core.html)

### Epinions social network

Grafo direcionado que representa uma rede social online do site de revisões de consumidores Epinions.com. Neste grafo, os membros do site podem tomar decisões sobre se eles "confiam" uns nos outros. Todas as relações de confiança interagem e formam a "Web of Trust" (Rede de Confiança), que é então combinada com as classificações de revisão para determinar quais revisões são mostradas ao usuário. Esse grafo é uma representação das conexões de confiança entre os membros do Epinions.com e como essas conexões de confiança afetam o sistema de classificação e exibição de revisões no site.

[![Link](https://img.shields.io/badge/Consultar_rede-blue?style=flat-square)](https://snap.stanford.edu/data/soc-Epinions1.html)

### Slashdot social network, November 2008

Grafo direcionado que representa a rede social da comunidade de usuários do site de notícias relacionadas à tecnologia chamado Slashdot. O site é conhecido por sua comunidade de usuários específica. A página apresenta notícias atuais, principalmente orientadas para a tecnologia, que são enviadas pelos usuários e avaliadas pelos editores. Em 2002, o Slashdot introduziu a funcionalidade chamada "Slashdot Zoo", que permite aos usuários marcarem uns aos outros como amigos ou inimigos. O grafo consiste em ligações de amigo/inimigo entre os usuários do Slashdot. Essas ligações indicam as relações de amizade e antagonismo entre os membros da comunidade.

[![Link](https://img.shields.io/badge/Consultar_rede-blue?style=flat-square)](https://snap.stanford.edu/data/soc-Slashdot0811.html)

### Wikipedia vote network

Grafo direcionado que descreve o processo de eleição de administradores na Wikipedia, a enciclopédia livre escrita colaborativamente por voluntários de todo o mundo. Na Wikipedia, um pequeno grupo de contribuidores são administradores, que são usuários com acesso a recursos técnicos adicionais que ajudam na manutenção do site. Para que um usuário se torne um administrador, é emitido um "Request for adminship" (RfA), e a comunidade da Wikipedia, por meio de discussões públicas ou votações, decide quem será promovido a administrador. Essa rede contém todos os dados de votação da Wikipedia desde o início do projeto até janeiro de 2008. 

[![Link](https://img.shields.io/badge/Consultar_rede-blue)](https://snap.stanford.edu/data/wiki-Vote.html)

## Artefatos

- [![Requisito 2](https://img.shields.io/badge/-Diretório-191A1B?style=flat-square&logo=files)](./Requisito_02/) Implementação do Requisito 2

- [![Requisito 3](https://img.shields.io/badge/-Diretório-191A1B?style=flat-square&logo=files)](./Requisito_03/) Implementação do Requisito 3

- [![Video](https://img.shields.io/badge/-Video-83DA77?style=flat-square&logo=loom)](https://www.loom.com/share/7e98eecbee0e48c1b94df1a3d1d16272) Explicação geral

## Referências

- [Stanford Large Network Dataset Collection](https://snap.stanford.edu/data/)
- [NetworkX: Network Analysis in Python](https://networkx.org/)