#' Remove annoying duplicated columns from messy merges and fix the names
#'
#' This function helps clean up your post-merge objects in cases where a merge
#'  or SQL join has resulted in many duplicated columns with names ending in '.x'
#'  and '.y'.
#' @param x an R data frame or object coercible into a data frame
#' @param y an R data frame or object coercible into a data frame which you wish
#'          to merge with x
#' @keywords dedup duplicate merge join
#' @export
#' @examples df.clean <- DeDup(df.messy)
DeDup <- function (x) {
  names(x) <- gsub("\\.x", "", colnames(x))
  names(x) <- gsub("\\.y", "DUPLICATE", colnames(x))
}