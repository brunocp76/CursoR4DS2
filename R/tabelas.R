#' Exercicio 05
#'
#' A funcao elenca os filmes com maior receita na base de dados.
#'
#' @param tab Tabela a ser pesquisada
#' @param n Quantidade de linhas a ser selecionada
#'
#' @return Tabela gerada com as N maiores receitas
#'
#' @export
pegar_maiores_receitas <- function(tab, n) {
   tab %>%
      filter(!is.na(receita)) %>%
      select(titulo, diretor, receita) %>%
      arrange(desc(receita)) %>%
      top_n(n = n) %>%
      mutate(receita = scales::comma(x = receita,
                                     big.mark = ".",
                                     decimal.mark = ","))
}

