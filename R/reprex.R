#' reprex for using rlang pronouns in functions
#'
#' @param df    data frame, has numeric column `x`
#' @param const numeric, scalar
#'
#' @return data frame: `df` with numeric column `y`
#' @export
#'
# mutate_y <- function(df, const) {
#
#   const <- enquo(const)
#
#   dplyr::mutate(df, y = UQ(const) + .data$x)
# }
