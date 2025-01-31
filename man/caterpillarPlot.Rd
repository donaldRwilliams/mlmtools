% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/caterpillarPlot.R
\name{caterpillarPlot}
\alias{caterpillarPlot}
\title{Caterpillar Plot}
\usage{
caterpillarPlot(
  model,
  grpvar,
  title = print(grpvar),
  tall = TRUE,
  grey = FALSE
)
}
\arguments{
\item{model}{A given lmer model.}

\item{grpvar}{The name of the grouping variable of interest, as a character string.}

\item{title}{The title of the plot.}

\item{tall}{Logical argument specifying whether the plot should be plotted vertically or horizontally.}

\item{grey}{Logical argument specifying whether the intervals should be plotted in color or greyscale.}
}
\description{
Plots empirical Bayes both point prediction and prediction intervals for each random effect parameter across all groups.
}
\examples{

\donttest{
data(instruction)
mod <- lme4::lmer(mathgain ~ (1 | classid), data = instruction)
classid_caterpillarPlot <- caterpillarPlot(mod, title = "title", grpvar = "classid", grey = TRUE)
}

}
\references{
Rabe-Hesketh S, Skrondal A (2012). Multilevel and Longitudinal Modeling Using Stata, Volumes I and II, Third Edition. 3 edition edition. Stata Press. ISBN 978-1-59718-108-2.
}
