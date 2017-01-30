#' Prettyfies file paths from '?list.files' output
#'
#' Makes file paths pretty to include in reports as links, or to send to people.
#' @param x output from '?list.files'
#' @param prepend anything you would like to prepend to your filepath i.e. however you link out
#' @param sep what characters are used to separate the output from '?list.files'
#' @keywords pretty file path
#' @export
#' @examples
#' pretty_file_path(list.files('.', full.names = TRUE))


prettyFilePath <- function(x, prepend = '', sep = '\n\n'){
  cat(paste0(prepend, x), sep = sep)
}