#' Assert that a data frame conforms to tidytemps
#'
#' This function is used to assert that a data frame conforms to
#' the "standard":
#'
#' - it has columns `interval_start` and `interval_duration`
#' - the column `interval_start` is POSIXct (although we should think of relaxing that to numeric)
#' - the column `interval_duration` is numeric
#'
#' @param data data frame
#'
#' @return `data`
#' @export
#'
assert_tidytemps <- function(data) {

  assertthat::assert_that(
    is.data.frame(data),
    assertthat::has_name(data, "interval_start"),
    assertthat::has_name(data, "interval_duration"),
    inherits("POSIXct", data[["interval_start"]]),
    is.numeric(data[["interval_duration"]])
  )

  data
}
