\name{umol_mg}
\alias{umol_mg}
\title{convert mg/L to micromol/L}
\description{Takes NASL data in mg/L and creates a new column with the result
in umol/L}
\usage{
umol_mg(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{the name of your NASL dataframe}
}
\details{Currently only works for Carbon, Nitrogen, Phosphorous, Silica. Other chemicals or parameters not in mg/L return NA}
\value{ new column in dataframe}
\author{Erin Reilly}

