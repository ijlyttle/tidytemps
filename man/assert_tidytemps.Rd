% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert.R
\name{assert_tidytemps}
\alias{assert_tidytemps}
\title{Assert that a data frame conforms to tidytemps}
\usage{
assert_tidytemps(data)
}
\arguments{
\item{data}{data frame}
}
\value{
\code{data}
}
\description{
Many of the functions in this package assume that data frames supplied
to them conform to a "standard".
}
\details{
This function will either raise an error, or return the data frame it was sent.

This is the standard expected of the data frame:
\itemize{
\item it has columns \code{interval_start} and \code{interval_duration}
\item the column \code{interval_start} is POSIXct (although we should think of relaxing that to numeric)
\item the column \code{interval_duration} is numeric
}
}
