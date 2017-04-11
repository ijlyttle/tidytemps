#' Assert that a data frame conforms to tidytemps
#'
#' Many of the functions in this package assume that data frames supplied
#' to them conform to a "standard".
#'
#' This function will either raise an error, or return the data frame it was sent.
#'
#' This is the standard expected of the data frame:
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
