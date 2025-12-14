# Provas antigas de matemática

Estou estudando matemática. E estudos de longo prazos sempre podem ser
frustrantes, pois é comum que não consigamos ver uma melhora depois de um tempo.
Uma maneira de validar o seu conhecimento, e identificar lacunas, é resolver
provas antigas de olimpíadas, vestibulares e concursos militares (que cobram um
nível técnico alto nas provas).

Durante esse processo tive diversas dificuldade para achar as provas de maneira
organizada. Cada uma num site diferente, alguns concursos nem disponibilizam as
provas antigas. Então resolvi baixar e compilar as provas e materiais correlatos
que eu uso.

## Como usar este repositório

_Aviso: cada pessoas aprende de maneira diferente. Então o processo aqui
descrito é pensado para meu uso modo de aprender e de estudar. Apesar disso,
acredito que ele possa ser útil para mais pessoas._

Eu estou estudando matemática do zero, então estou revendo coisas desde o
fundamental. E para verificar meu progresso, toda semana eu resolvo alguma
prova. E caso tenha errado alguma questão, de algum assunto já visto, uso essa
informação para guiar a minha revisão de conteúdo.

Apesar de algumas provas não representarem um desafio técnico alto, elas são
valiosas, pois fazendo essas provas, como a OBMEP nível 1, descobri que a
desatenção é um fator muito comum para que eu erre, até mesmo questões de
assuntos que eu domino. Sendo assim, essas provas "mais fáceis", me ajudam
lapidar meu método de resolver problema e controlar a ansiedade.

A ordem que eu faço as provas varia bastante, mas a heurística básica que eu uso
é:

> Se uma proca é muito fácil, já pode fazer uma prova mais difícil. Se uma prova
> está muito difícil, volte para provas mais fáceis.

As provas aqui reunidas podem ser ordenadas por dificuldade técnica assim:

- [OBMEP (nível 1)](./provas/olimpiadas-de-matematica/obmep/nivel-1)
- [OBM (nível 1)](./provas/olimpiadas-de-matematica/obm/nivel-1)
- [Colégios militares (ensino
  fundamental)](./provas/concursos-militares/ensino-fundamental/colegio-militar/)
- [OBMEP (nível 2)](./provas/olimpiadas-de-matematica/obmep/nivel-2)
- [Colégio
  Naval](./provas/concursos-militares/ensino-fundamental/colegio-naval/)
- [Colégios militares (ensino
  médio)](./provas/concursos-militares/ensino-medio/colegio-militar/)
- [ENEM](./provas/vestibulares/enem/)
- [UECE](./provas/vestibulares/uece/)
- [EsPCEx](./provas/concursos-militares/ensino-medio/EsPCEx/)

## Livros utilizados

O livros que utilizei durante o meu aprendizado foram:

- [Manual Compacto da Matemática - Ensino
  Fundamental](https://archive.org/details/mc-matem-ef)
- [Teoria e Questões de Matemática - Ensino Fundamental (TQM
  verde)](https://www.editoraxyz.com/tqm---teoria-e-questoes-de-matematica-ensino-fundamental/p)
- [Manual Compacto da Matemática - Ensino
  Médio](https://archive.org/details/mc-matem-em_202503)
- [Teoria e Questões de Matemática - Ensino Médio (TQM
  azul)](https://www.editoraxyz.com/tqm---teoria-e-questoes-de-matematica-ensino-medio-pre-venda/p)
- [Tópicos de Álgebra Elementar (capeta
  azul)](https://loja.uiclap.com/titulo/ua49428/)

## Como contribuir

Existem diversas maneiras de contribuir com esse repositório:

- Adicionar provas que faltam de um determinado concurso pré-existente.
- Adicionar provas de novos concursos.
- Renomear as provas já existente de uma maneira mas organizada.
- Adicionar provas resolvidas (a maior parte das provas tem apenas o gabarito)

### Como baixar as provas

Caso tenha familiaridade com terminal e execução de shell script, pode-se usar o
[script](./scripts/baixar.sh) para baixar as provas. Mas a ideia não é, e nunca
foi, fazer um script genérico que consiga baixar arquivos de provas de qualquer
site. Então esse processo é manual e exige adaptações no código para cada site
de provas. O [script](./scripts/baixar.sh) tem como dependência ter instalado
[html-xml-utils](https://tracker.debian.org/pkg/html-xml-utils).

Mas você pode perfeitamente baixar as provas manualmente e organizar no
diretório correspondente e abrir um pull request.

### Como nomear as provas

O padrão de nomenclatura segue as seguinte regras:

- Os arquivos relacionado devem ficar juntos depois de renomeados.
- Não deve haver espaço para separar as palavras, mas traço (`-`).
- Não se deve usar letras maiúsculas.
  
Os item do nome dos arquivos são:

- Ano com 4 dígito.
- Número do semestre para provas que são aplicads mais de uma vez por ano
  (opcional).
- Nível da prova. Para os concursos que se separam por nível, como provas dos
  colégios militares ou olimpíadas de matemática. Quando a prova usa os nível
  por etapa do ensino, usa-se o nome da etap, como `ensino-fundamental`. Se usar
  níveis, usar algo como `nível-1`.
- Fase da provas. Para concurso que se dividam em mais de uma etapa. Usa-se a
  palavra fase e o número da fase, como `fase-1`.
- Nome do concurso em minusculas
- Descrição do tipo do arquivo. Pode assumir os seguinte valores:
  - `gabarito` (arquivos que tenha apenas as opções corretas sem explicação de
    como resolver)
  - `prova-e-gabarito` (arquivo da prova que já contem as respostas das questões
    sem explicação de como resolver)
  - `prova-resolvida` (arquivo da prova que já contem as explicações de como
    resolver cada questão)
  - `prova` (arquivo que contém apenas a prova)
  - `resolucao` (arquivo separado que contem as explicações de como resolver
    cada questão, e consequantemente o gabarito)
