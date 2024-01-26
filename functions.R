get_data <- function(){
  df <- read.xlsx("data.xlsx")
  
  # Rename columns
  colnames(df) <- c("Category", "Date","Value")
  
  # Convert date column to Date format
  df$Date <- as.numeric(df$Date)
  df$Date <- as.Date(df$Date, origin = "1899-12-30")
  
  return(df)
}

get_unemp_rates <- function(df){
  # This function calculates the unemployment rates in Luxembourg using the following:
  # unemployment rates = Number of unemployed / Active population
  df_unemp <- data.frame(
    Category = rep("Unemployment rate", 344),
    Date = df[1:344, 2],
    Value = df |> 
      filter(Category == "Number of unemployed") |>
      select(Value) / df |>
      filter(Category == "Active population") |>
      select(Value)
  )
  
  return(df_unemp)
}

plot_unemp_rates <- function(df_unemp){
  theme_set(theme_bw( base_size = 15))
  
  graph <- df_unemp |>
    ggplot(aes(x = Date, y = Value)) + 
    geom_line(color = "red") + 
    geom_smooth() + 
    labs(title = "Unemployment Rates of Luxembourg",
         x = NULL,
         y = NULL) +
    theme(legend.position = "none")
  
  return(graph)
}

save_plot <- function(save_path, plot){
  ggsave(save_path, plot)
  save_path
}








