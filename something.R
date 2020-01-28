# Separate, flatten, and trim values in the vector
clean <- function(vec) {
    +   values <- strsplit(vec, ",")
    +   flat_values <- unlist(values)
    +   trimmed_values <- str_trim(flat_values)
    +   trimmed_values
    + }
# Read data and get unique climate values
  get_climates <- function() {
      +   planets <- readr::read_csv2(here::here("activities/planets.csv"))
      +   unique_climate <- uniquify(planets$climate)
      +   unique_climate
      + }