# Carregar pacotes necessários
library(readr)   # Para ler dados de arquivos CSV
library(dplyr)   # Para manipulação de dados
library(ggplot2) # Para visualização de dados

# Carregar conjunto de dados
orc <- read.csv(
  file  = "C:\\Users\\ramon\\OneDrive\\Documentos\\AnalisedeDadosemLinguagemR\\trabalhopf\\2016_OrcamentoDespesa.CSV",
  fileEncoding='latin1',
  sep= ';',
  dec= ','
)

# Visualizar as primeiras linhas do conjunto de dados
head(orc)

# Sumário estatístico das variáveis numéricas
summary(orc)

# Visualizar distribuição da variável numérica 'ORÇAMENTO.INICIAL..R..'
ggplot(orc, aes(x = ORÇAMENTO.INICIAL..R..)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Distribuição do Orçamento Inicial")

# Gráfico de barras para a variável categórica 'NOME.UNIDADE.ORÇAMENTÁRIA'
ggplot(orc, aes(x = NOME.UNIDADE.ORÇAMENTÁRIA)) +
  geom_bar(fill = "lightgreen", color = "black") +
  labs(title = "Distribuição da Unidade Orçamentária")

# Relação entre variáveis numéricas 'ORÇAMENTO.ATUALIZADO..R..' e 'ORÇAMENTO.REALIZADO..R..'
ggplot(orc, aes(x = ORÇAMENTO.ATUALIZADO..R.., y = ORÇAMENTO.REALIZADO..R..)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Relação entre Orçamento Atualizado e Realizado")


