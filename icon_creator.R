library(png)
library(scifigure)

not_observed <- readPNG("icons/not_observed.png")
different <- readPNG("icons/different.png")
incorrect <- readPNG("icons/incorrect.png")
observed <- readPNG("icons/observed.png")

icons_diff <- icons

for ( i in 1:44 ) {
  if ( i %% 4 == 0 ) {
    icons_diff[[i]] <- not_observed
  }
  if ( i %% 4 == 1 ) {
    icons_diff[[i]] <- different
  }
  if ( i %% 4 == 2 ) {
    icons_diff[[i]] <- incorrect
  }
  if ( i %% 4 == 3 ) {
    icons_diff[[i]] <- observed
  }
}

save(icons_diff, file="icons_diff.RData")