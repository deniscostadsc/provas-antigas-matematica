# Provas antigas de matemática

Uma coleção organizada de provas antigas para estudo e prática da matemática.

## Sobre

Estudar matemática de forma consistente pode ser desafiador - muitas vezes não
percebemos nosso progresso ao longo do tempo. Uma maneira eficaz de **validar
conhecimentos** e **identificar lacunas** é resolver provas antigas de:

- Olimpíadas de matemática.
- Vestibulares.
- Concursos militares.
- etc..

Este repositório surgiu da dificuldade em encontrar essas provas de maneira
organizada. Cada instituição disponibiliza seus materiais em sites diferentes,
alguns nem mesmo mantêm arquivos antigos. Aqui, compilei e organizei tudo em um
só lugar.

## Para quem é útil?

Principalmente para:
- Estudantes que estão aprendendo matemática do zero.
- Pessoas que desejam revisar conteúdos do ensino fundamental e médio.
- Quem busca material estruturado para prática constante.
- Professores em busca de material de apoio.
- Quem está se preparando para alguma prova.

## Método de Estudo Proposto

> **Aviso**: Cada pessoa aprende de forma diferente. Este método foi
> desenvolvido para meu próprio processo de aprendizado, mas pode ser adaptado
> por outros.

### Princípios básicos:

1. **Prática recorrente**: Resolver pelo menos uma prova por semana/quinzena/mês.
2. **Análise de erros**: Questões erradas guiam a revisão de conteúdo.
3. **Autoavaliação contínua**: Provas servem como termômetro do progresso.

### Por que provas "fáceis" são importantes?

Mesmo provas como a OBMEP Nível 1 são valiosas porque ajudam a:
- Identificar problemas de **desatenção**.
- Lapidar o **método de resolução de problemas**.
- Controlar a **ansiedade durante provas**.
- Consolidar conhecimentos básicos.

### Heurística de escolha das provas

Prova muito fácil, avance para mais difícil. Prova muito difícil, volte para
mais fácil.

## Lista das provas reunidas ordenadas por dificuldade técnica

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

## Livros de referência

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
- Renomear as provas já existentes de uma maneira mais organizada.
- Adicionar provas resolvidas (a maior parte das provas tem apenas o gabarito).

### Como baixar as provas

Caso tenha familiaridade com terminal e execução de shell script, pode-se usar o
[script](./scripts/baixar.sh) para baixar as provas. Mas a ideia não é, e nunca
foi, fazer um script genérico que consiga baixar arquivos de provas de qualquer
site. Então esse processo é manual e exige adaptações no código para cada site
de provas. O [script](./scripts/baixar.sh) tem como dependência ter instalado
[html-xml-utils](https://tracker.debian.org/pkg/html-xml-utils).

Mas você pode perfeitamente baixar as provas manualmente e organizar no
diretório correspondente e abrir um pull request.

### Padrão de nomenclatura

- Os arquivos relacionado devem ficar juntos depois de renomeados.
- Não deve haver espaço para separar as palavras, mas traço (`-`).
- Não se deve usar letras maiúsculas.
  
Os component do nome dos arquivos são:

- Ano: 4 dígitos (`2023`, `1998`).
- Semestre (opcional): número (`1`, `2`).
- Nível: nivel-x ou etapa (`nivel-1`, `ensino-fundamental`).
- Fase: fase-x (`fase-1`, `fase-2`).
- Concurso: nome em minúsculas (`obmep`, `enem`, `colegio-militar-brasilia`).
- Tipo: `gabarito`, `prova`, `prova-e-gabarito`, `prova-resolvida`, `resolucao`.

#### Exemplos

```
2023-nivel-1-fase-1-obmep-prova.pdf
2023-nivel-1-fase-1-obmep-resolucao.pdf
````
