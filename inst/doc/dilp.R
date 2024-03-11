## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dilp)

## ----The simplest workflow----------------------------------------------------
# If the dataset is in good shape, this is all you need to do

dilp_results <- dilp(McAbeeExample)
lma_results <- lma(McAbeeExample)

# This just grabs the key data points from the results
data.frame(
  Site = c("McAbee H1", "McAbee H2"),
  MAT_MLR = dilp_results$results$MAT.MLR,
  MAT_SLR = dilp_results$results$MAT.SLR,
  MAP_MLR = dilp_results$results$MAP.MLR,
  MAP_SLR = dilp_results$results$MAP.SLR,
  site_mean_LMA = lma_results$lowe_site_mean_lma$value
)

## ----DiLP result elements-----------------------------------------------------
# Elements of DiLP results:
print(paste0("dilp_results$", names(dilp_results)))

## ----Check errors-------------------------------------------------------------
dilp_results$errors

## ----Check outliers-----------------------------------------------------------
dilp_results$outliers

## ----Check the final results--------------------------------------------------
dilp_results$results

## ----Check CCA----------------------------------------------------------------
dilp_cca(dilp_results)

## ----LMA results elements-----------------------------------------------------
lma_results <- lma(McAbeeExample)
print(paste0("lma_results$", names(lma_results)))

## -----------------------------------------------------------------------------
lma_results$species_mean_lma

## -----------------------------------------------------------------------------
# Royer Site Mean LMA
lma_results$royer_site_mean_lma

## -----------------------------------------------------------------------------
# Lowe Site Mean LMA
lma_results$lowe_site_mean_lma

## -----------------------------------------------------------------------------
# Lowe Site Variance LMA
lma_results$lowe_site_variance_lma

## -----------------------------------------------------------------------------
temp_slr(McAbeeExample, regression = "Peppe2018")

## -----------------------------------------------------------------------------
precip_slr(McAbeeExample, regression = "Wilf1998")

## -----------------------------------------------------------------------------
temp_slr(McAbeeExample, slope = 0.290, constant = 1.320, error = 5)

