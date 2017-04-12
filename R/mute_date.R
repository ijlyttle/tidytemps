#' Characterize a data frame using date
#'
#' Used when we want to characterize a tidytemps data frame by date and time
#' within the date. Please make sure that the timezone is set for `interval_start`.
#'
#' Adds two additional columns: (TODO)
#'
#' @param data         data frame, compliant with `assert_tidytemps()`
#' @param duration_ref numeric or [lubridate Duration][lubridate::Duration-class],
#'   number of seconds after local midnight at the start of the date
#'
#' @return `data` with two new columns, `date` and `date_index`
#' @export
#'
mute_date <- function(data, duration_ref = lubridate::dhours(0)) {

  # assert that data has the "right" format
  data <- assert_tidytemps(data)

  # for each "interval_start" get the datetime corresponding to midnight for its reference
  dtm_date_start <-
    (data[["interval_start"]] - duration_ref) %>%
    lubridate::floor_date(unit = "day")

  # in the fullnes of time make sure that we are referring to the environment
  data <-
    data %>%
    dplyr::mutate(
      date = lubridate::as_date(dtm_date_start),
      date_index = as.numeric(.data$interval_start) - as.numeric(dtm_date_start)
    )

  data
}
