% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/mplot.R
\name{fortify.summary.lm}
\alias{fortify.TukeyHSD}
\alias{fortify.summary.glm}
\alias{fortify.summary.lm}
\title{Extract data from R objects}
\usage{
\method{fortify}{summary.lm}(model, data = NULL, level = 0.95, ...)

\method{fortify}{summary.glm}(model, data = NULL, level = 0.95, ...)

\method{fortify}{TukeyHSD}(model, data, ...)

\method{fortify}{TukeyHSD}(model, data, ...)
}
\arguments{
\item{model}{an R object}

\item{data}{original data set, if needed}

\item{level}{confidence level}

\item{...}{additional arguments}
}
\description{
Extract data from R objects
}
\examples{
if (require(mosaicData)) {
fortify(TukeyHSD(lm(age ~ substance, data=HELPrct)))
}
if (require(mosaicData)) {
fortify(TukeyHSD(lm(age ~ substance, data=HELPrct)))
}
}

