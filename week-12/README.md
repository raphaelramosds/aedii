# U2T3

Este trabalho foi desenvolvido pelos componentes

- Raphael Ramos
- Ernane Ferreira

## Explicação do trabalho

Este trabalho tem como objetivo aplicar a teoria de Hubs, no contexto de grafos, em redes dirigidas compostas por páginas do Wikipedia. Nele, foram solicitados o cumprimento de cinco requisitos 

- **Requisito 1:** Gerar uma rede (grafo) dirigida a partir dos links das páginas do Wikipédia considerando a fusão de 4 SEEDs (páginas iniciais). As SEEDs deverão ser diferentes daquela fornecida no exemplo da semana 11. Limitar o nível de profundidade da rede para 2 (similar ao que foi demonstrado em sala de aula).

- **Requisito 2:** A partir da rede construída gerar uma figura que destaque as propriedades de centralidade da rede utilizando o Gephi, tais como degree centrality, closeness centrality, betweness centraliy e eigenvector centrality. As figuras devem ser acompanhadas de descrições/explicações. 

- **Requisito 3:** A partir da rede construída gerar uma figura que contenha os gráficos da Cumulative Density Function (CDF) e Probability Density Function (PDF) considerando o in-Degree dos vértices da rede. A figura deverá ser acompanhada de explicações/descrições.

- **Requisito 4:** A partir da rede construída gerar uma figura similar no gephi destacando o k-core e o k-shell da rede. O layout é de livre escolha. Os vértices devem ter um tamanho proporcional a propriedade in-degree. A figura deverá estar acompanhada de descrição/explicação.

- **Requisito 5:** A rede deverá estar em produção de forma análoga ao explicado na Semana 12. As cores deverão ser
relacionadas ao critério de comunidade e o tamanho do vértice a métrica in-degree.

## Requisito 1

As quatro páginas iniciais escolhidas para a construção da rede do trabalho estão relacionadas às indústrias do petróleo, gás e energias renováveis. Elas foram

- [Carbon and capture storage](https://en.wikipedia.org/wiki/Carbon_capture_and_storage)
- [Mud logging](https://en.wikipedia.org/wiki/Mud_logging)
- [Oil well](https://en.wikipedia.org/wiki/Oil_well)
- [Petroleum](https://en.wikipedia.org/wiki/Petroleum_geology)

Utilizou-se o algoritmo de *scraping* apresentado na [Week 11](../week-11/Wikipedia.ipynb) para transformar essas páginas do Wikipedia em uma rede direcionada e, após usar rotinas do NetworkX para uni-las em uma única rede, utilizou-se o *software* Gephi para criar uma visualização dela, como mostrado abaixos

![Network](./assets/imgs/network.png)

Nessa representação, os nós são páginas do Wikipedia e as arestas são os links entre as páginas. Como é possível ver, duas estratégias foram utilizadas para essa representação: as cores dos nós  são relacionadas ao critério de comunidade e o tamanho deles à métrica in-degree. Dessa forma, é possível ver na figura que algumas páginas são mais citadas pelas outras, como Petroleum, Petroleum Industry e Oil Refiney, por causa do seu in-degree alto.

## Requisito 2

> O algoritmo utilizado para montar a layout das redes abaixo foi o `OpenOrd`. No momento em que ele foi aplicado, notou-se que, durante as iterações, ele acabou sobrepondo nós com tamanhos maiores. Dessa forma, as representações abaixo podem dar a impressão que nossa rede diminuiu, em comparação a representação apresentada no Requisito 1.

Ao observar as quatro imagens que representam as métricas de degree centrality, closeness centrality, betweenness centrality e eigenvector centrality, torna-se evidente a necessidade de compreender o significado de cada elemento:

- **Degree centrality:** Mede o número de conexões diretas de um nó na rede.
- **Closeness centrality:** Avalia a proximidade de um nó em relação aos demais, considerando o comprimento médio dos caminhos mais curtos.
- **Betweenness centrality:** Indica a importância de um nó na comunicação entre outros nós, identificando quantos caminhos passam por ele.
- **Eigenvector centrality:** Atribui importância aos nós com base na qualidade das conexões que possuem, levando em consideração a relevância dos nós aos quais estão conectados.

Ao analisar os dados e as imagens abaixo, destacamos que, no degree centrality, os nós com maior *in degree*, como petroleum, são evidenciados. Esses nós pertencem ao grupo de páginas que possuem muitos links apontando para elas. No closeness centrality, identificamos os nós mais proeminentes, como *Shale*, *Orlen* e Oxide que acabam ficando mais próxima dos nós da rede. Na prática, isso significa que não precisamos navegar muito tempo no Wikipedia para alcançá-los, desde que as páginas pesquisadas sejam relacionadas aos temas considerados por nós neste trabalho. O eigenvector centrality fornece informações sobre a importância de cada nó com base na qualidade de suas conexões, destacando nós como *Lukoi*, Oil Refinery e Petroleum em tons mais avermelhados. Esses, quando comparado aos outros, possuem como vizinhos as páginas que mais caracterizam os temas pesquisados na rede. Por fim, o *betweenness* centrality revela a importância de um nó para a navegação entre outros na rede, sendo exemplificado por petroleum e carbon dioxide como os mais cruciais. Ou seja, caso você queira navegar de uma página a outra relacionada a esse tema, é muito provável que você passe por uma dessas páginas.

![Centralities](./assets/imgs/centralities.png)

## Requisito 3

Ao examinar o gráfico, observe que as barras verticais em azul denotam a quantidade de conexões, enquanto a curva em vermelho representa a Função de Densidade de Probabilidade Cumulativa (FDP), à direita, e a Função de Densidade de Probabilidade, à esquerda. Há uma predominância de conexões de baixo grau, indicando uma quantidade elevada, contrastando com a presença de elementos mais relevantes (graus maiores) em menor quantidade.

Observando a Função Densidade de Probabilidade (FDP), concluímos que na base de dados utilizada de links da Wikipedia, há poucas páginas sobre os temas pesquisados que concentram um grande número de links direcionados a elas. Logo, essas páginas emergem como as mais relevantes dentro desses tópicos, como evidenciado pelo exemplo da indústria do petróleo, onde a probabilidade de escolher um nó de indegree alto é abaixo de 2%, enquanto para indegrees entre 0 e 50, as probabilidades ultrapassam 10%, sugerindo maior relevância.

![PDF e CDF](./assets/imgs/cdf-pdf.png)

## Requisito 4

Na teoria de grafos, o k-core é o subconjunto de nós que possuem pelo menos grau k. Então, por exemplo, o 0-core contém todos os nós da rede, o 1-core contém os nós com pelo menos um vizinho, e assim sucessivamente. O k-shell, resumidamente, representa o subconjunto de nós removidos para alcançar o próximo k-core. A última camada da rede é o último k-core. Abaixo estão apresentados o k-core e o k-shell da rede construída.

![K-core e K-shell](./assets/imgs/layers.png)

A figura acima sugere uma interepretação interessante: o núcleo da nossa rede é um grafo fechado em que seus vértices possuem pelo menos grau 311, e há um único nó que se posiciona entre o 177-core e o 311-core. Esse único nó compõe o 177-shell da rede.

## Requisito 5

A rede construída está em produção no seguinte endereço [Wikipedia Network](https://raphaelramosds.github.io/netdeploy/)

## Artefatos

- [![Implementações](https://img.shields.io/badge/-Diretório-191A1B?style=flat-square&logo=files)](./Week%2012%20-%20Assignment.ipynb) Implementações
- [![Video](https://img.shields.io/badge/-Video-83DA77?style=flat-square&logo=loom)]() Explicação geral