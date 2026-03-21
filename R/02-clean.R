library (tidyverse)
raw <- read_csv ("data/raw/earthquakes.csv")

##count the number of earthquakes> 5.0 

n_eq_g5 <- raw |> 
filter(mag>5) |>
  count()

min_date <- raw |> 
  summarise(min=min(ymd_hms(time)))

max_date <- raw |>
  summarise(max=max(ymd_hms(time)))

save(n_eq_g5, min_date, max_date, file="data/clean/number_earthquake.RData")

#make the dataset clean 
clean <- raw |>
  select(time) 

save(clean, file = "data/clean/clean.RData")
write_csv(clean, file=here::here("data", "clean", "clean.csv"))


  

