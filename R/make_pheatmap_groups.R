#' Annotate your group clusters easier.
#'
#' This function creates the data frame for input into pheatmaps 'annotation_row' or 'annotation_col' option
#' @param hclust_object the output from a call to hclust
#' @param numClusters the number of clusters you want to have assigned to a group
#' @keywords pheatmap groups
#' @export
#' @examples
#' make_pheatmap_groups()

make_pheatmap_groups <- function(hclust_object, numClusters = 4){
  ## Takes and object from 'hclust' and the number of Clusters to assign groups to.
  ## Returns a data frame of the properly formated annotation to use with pheatmap.
  mycl                 <- cutree(hclust_object, k = numClusters)
  cluster.letters      <- LETTERS[seq( from = 1, to = numClusters)]
  clusters             <- paste0("Cluster ", cluster.letters)
  mycols               <- clusters[as.vector(mycl)]
  names(mycols)        <- names(mycl)
  annotation           <- data.frame(Cluster=mycols)
  rownames(annotation) <- names(mycl)
  annotation$Cluster   <- as.factor(annotation$Cluster)
  invisible(annotation)
}