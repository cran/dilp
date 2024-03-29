% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dilp_cca.R
\name{dilp_cca}
\alias{dilp_cca}
\title{Test if site leaf physiognomy falls within the physiognomic space of the DiLP calibration dataset}
\usage{
dilp_cca(
  dilp_table,
  physiognomy_calibration = physiognomyCalibration,
  climate_calibration = climateCalibration
)
}
\arguments{
\item{dilp_table}{The results of a call to \code{\link[=dilp]{dilp()}}}

\item{physiognomy_calibration}{A physiognomic calibration dataset. Defaults to an internal version of
\code{\link{physiognomy_calibration_data}}.}

\item{climate_calibration}{A climate calibration dataset. Defaults to an internal version of
\code{\link{climate_calibration_data}}.}
}
\value{
A ggplot2 plot
}
\description{
\code{dilp_cca} plots a canonical correspondence analysis (CCA) ordination of the leaf
physiognomic space represented in the calibration dataset of Peppe et al. (2011).
The fossil sites being tested are placed along the CCA axes.  If a fossil site
falls outside of the plotted calibration space, paleoclimate reconstructions
for that fossil site should be treated with caution.
}
\examples{
results <- dilp(McAbeeExample)
dilp_cca(results)

}
\references{
\itemize{
\item Peppe, D.J., Royer, D.L., Cariglino, B., Oliver, S.Y., Newman, S., Leight, E., Enikolopov, G., Fernandez-Burgos, M., Herrera, F., Adams, J.M., Correa, E., Currano, E.D., Erickson, J.M., Hinojosa, L.F., Hoganson, J.W., Iglesias, A., Jaramillo, C.A., Johnson, K.R., Jordan, G.J., Kraft, N.J.B., Lovelock, E.C., Lusk, C.H., Niinemets, Ü., Peñuelas, J., Rapson, G., Wing, S.L. and Wright, I.J. (2011), Sensitivity of leaf size and shape to climate: global patterns and paleoclimatic applications. New Phytologist, 190: 724-739. https://doi.org/10.1111/j.1469-8137.2010.03615.x
}
}
