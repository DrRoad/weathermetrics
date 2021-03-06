% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rainmeasure_conversion.R
\name{convert_precip}
\alias{convert_precip}
\title{Convert between precipitation metrics}
\usage{
convert_precip(precip, old_metric, new_metric, round = 2)
}
\arguments{
\item{precip}{A numerical vector of precipitation to be converted.}

\item{old_metric}{The metric from which you want to convert. Possible options
are:
\itemize{
      \item \code{inches}: Inches
      \item \code{mm}: Millimeters
      \item \code{cm}: Centimeters
}}

\item{new_metric}{The metric to which you want to convert. The same options
are possible as for \code{old_metric}.}

\item{round}{An integer indicating the number of decimal places to
round the converted value.}
}
\value{
A numeric vector with precipitation converted to the metric specified
   by the argument \code{new_metric}.
}
\description{
This function allows you to convert among the following precipitation metrics:
inches, millimeters, and centimeters.
}
\examples{

data(breck)
breck$Precip.mm <- convert_precip(breck$Precip.in,
   old_metric = "inches", new_metric = "mm", round = 2)
breck

data(loveland)
loveland$Precip.in <- convert_precip(loveland$Precip.mm,
   old_metric = "mm", new_metric = "inches", round = NULL)
loveland$Precip.cm <- convert_precip(loveland$Precip.mm,
   old_metric = "mm", new_metric = "cm", round = 3)
loveland
}
\author{
Joshua Ferreri \email{joshua.m.ferreri@gmail.com},
Brooke Anderson \email{brooke.anderson@colostate.edu}
}
