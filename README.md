
<!-- README.md is generated from README.Rmd. Please edit that file -->
tidytemps
=========

At some point, it will be nice to have a well-formulated grammar and DSL for dealing with time-indexed data frames. Until then, this package is yet another attempt to get that grammar to reveal itself through a half-baked implementation that can be used to solve a few problems.

The fundamental object is a data frame with some additional restrictions:

-   it has columns `interval_start` and `interval_duration`.
-   the column `interval_start` is POSIXct (although we should think of relaxing that to numeric)
-   the column `interval_duration` is numeric

You can check that your data frame is conforming using the function `assert_tidytemps()`.

Code of conduct
---------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
