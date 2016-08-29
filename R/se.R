#' Calculate Standard Error
#'
#' This function calculates the standard error.
#' @param x a vector to calculate the error for.
#' @keywords standard error
#' @export
#' @examples
#' vec <- seq(1, 50, by = 3)
#' se(vec)

se <- function(x) sqrt(var(x)/length(x))
