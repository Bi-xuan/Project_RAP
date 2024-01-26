library(targets)
library(openxlsx)
library(dplyr)
library(ggplot2)

source("functions.R")

list(
  tar_target(
    labor_market_lux,
    get_data()
  ),
  
  tar_target(
    unemp_rates_lux,
    get_unemp_rates(labor_market_lux)
  ),
  
  tar_target(
    unemp_rates_plot,
    plot_unemp_rates(unemp_rates_lux)
  ),
  
  tar_target(
    unemp_rates_saved_plot,
    save_plot("/home/graphs/unemp_rates_lux.png", unemp_rates_plot),
    format = "file"
  )
)