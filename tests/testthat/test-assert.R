context("assert")

test_that("assert_tidytemps works", {
  expect_error(assert_tidytemps(iris), "interval_start")
  expect_identical(electricity, assert_tidytemps(electricity))
})
