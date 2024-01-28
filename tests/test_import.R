library(dplyr)
library(openxlsx)

test_that("Calculate unemployment rates works", {
  df <- read.xlsx("data.xlsx")
  colnames(df) <- c("Category", "Date","Value")
  
  unemp_rates_tmp <- df |> 
    filter(Category == "Number of unemployed") |>
    select(Value) / df |>
    filter(Category == "Active population") |>
    select(Value)
  load("unemp_rates.RData")
  
  
  expect_equal(unemp_rates, unemp_rates_tmp)
})