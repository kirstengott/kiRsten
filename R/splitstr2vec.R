#' Turn ?strsplit lists into vectors
#'
#' A wrapper for ?strsplit that will split the your character vector and only return the first element of the resultant list.
#' Useful for breaking up a character vector when you only want output type, instead of having the vector embedded in a list.
#' @param x a character vector to split
#' @param split input to ?strsplit
#' @keywords strsplit vector
#' @export
#' @examples
#' test <- 'Hello there world! I like cats and unicorns.'
#' strsplit2vec(test)
#' strsplit2vec(test)[2] 




splitstr2vec <- function(x, split = ' '){
  strsplit(x, split = split)[[1]]
}




