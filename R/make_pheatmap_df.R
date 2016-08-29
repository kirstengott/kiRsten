#' A function to make a data frame that will be in the library pheatmap's color limits that you want.
#'
#' This function allows you to write out tsv files with default options that make sense..
#' @param x the pheatmap data matrix input
#' @param min the minimum value in your color scheme
#' @param max the maximum value in your color scheme
#' @keywords pheatmap table
#' @export
#' @examples
#' make_pheatmap_df()

make_pheatmap_df <- function(x, min = -3, max = 3){
  ## Makes a dataframe that takes kindly to pheatmap's color mapping restrctions.
  ## x: a dataframe to make a heatmap from.
  x[x > max] <- max
  x[x < min] <- min
  invisible(x)
}
