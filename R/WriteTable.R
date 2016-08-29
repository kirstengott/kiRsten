
#' Another Table Writing Function
#'
#' This function allows you to write out tsv files with default options that make sense..
#' @param x the data frame that you want to write out.
#' @param file the path of the file you are writing to
#' @keywords write table
#' @export
#' @examples
#' WriteTable()

WriteTable <- function(x, file){
  write.table(x, file, row.names = FALSE, sep = "\t", quote = FALSE)
}