#' Makes pretty links
#'
#' Automates making mass links to output files. Works well with '?mapply', see example.
#' @param x output from '?list.files' that you want to be the text for the link
#' @param y file path to the location you want to link to
#' @param sep what the separator for '?cat' should be
#' @keywords pretty file path
#' @export
#' @examples
#' invisible(mapply(prettyFileLink, 
#' x = list.files('.'), 
#' y = list.files('.', full.names = TRUE)))

prettyLinkFile <- function(x, y, sep = '\n\n'){
  cat(paste0('[', x, ']', '(',  y, ')'), sep)
}