#' reprex for using rlang pronouns in functions
#'
#' @param df    data frame, has numeric column `x`
#' @param const numeric, scalar
#'
#' @return data frame: `df` with numeric column `y`
#' @importFrom rlang .data
#' @export
#'
mutate_y <- function(df, const) {
  dplyr::mutate(df, y = const + .data$x)
}
