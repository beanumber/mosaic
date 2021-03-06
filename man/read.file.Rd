% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/read.file.R
\name{read.file}
\alias{read.file}
\title{Read data files}
\usage{
read.file(file, header = T, na.strings = "NA", comment.char = NULL,
  filetype = c("default", "csv", "txt", "tsv", "fw", "rdata"),
  package = NULL, ...)
}
\arguments{
\item{file}{character:
     The name of the file which the data are to be read from.
     This may also be a complete URL or a path to a compressed file.
     If it does not contain an absolute path, the file name is
     relative to the current working directory,
     \code{getwd()}.  Tilde-expansion is performed where supported.
     See \code{\link{read.table}} for more details.}

\item{header}{logical;
    For \code{.txt} and \code{.csv} files, this indicates whether the first line of the file includes variables names.}

\item{na.strings}{character: strings that indicate missing data.}

\item{comment.char}{character: a character vector of length one containing a single character or an empty string. Use "" to turn
off the interpretation of comments altogether.}

\item{filetype}{one of \code{"default"}, \code{"csv"}, \code{"txt"}, or \code{"rdata"}
indicating the type of file being loaded.  The default is to use the filename
to guess the type of file.}

\item{package}{if specified, files will be searched for among the documentation
files provided by the package.}

\item{\dots}{additional arguments passed on to
  \code{\link{read.table}}, or \code{\link{load}} or one of the functions
  in the \code{readr} package.  Note that a message will indicate which
  underlying function is being used.}
}
\value{
A data frame, unless \code{file} unless \code{filetype} is \code{"rdata"},
in which  case arbitrary objects may be loaded and a character vector
holding the names of the loaded objects is returned invisibly.
}
\description{
A wrapper around various file reading functions.
}
\details{
Unless \code{filetype} is specified,
\code{read.file} uses the (case insensitive) file extension to determine how to read
data from the file.  If \code{file} ends in \code{.rda} or \code{.rdata}, then
\code{\link{load}} is used to load the file.  If \code{file}
ends in \code{.csv}, then \code{\link[readr]{read_csv}} or \code{\link{read.csv}} is used.
Otherwise, \code{\link{read.table}} is used.
}
\examples{
\dontrun{
Dome <- read.file("http://www.mosaic-web.org/go/datasets/Dome.csv")
}
Mustangs <- read.file("MustangPrice.csv", package="mosaic")
}
\seealso{
\code{\link[readr]{read_table}},
\code{\link[readr]{read_csv}},
\code{\link{load}}.
}
\keyword{util}

