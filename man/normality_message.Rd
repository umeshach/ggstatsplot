% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers_messages.R
\name{normality_message}
\alias{normality_message}
\title{Display normality test result as a message.}
\usage{
normality_message(x, lab = NULL, k = 3, output = "message")
}
\arguments{
\item{x}{A numeric vector.}

\item{lab}{A character describing label for the variable. If \code{NULL}, a
generic \code{"x"} label will be used.}

\item{k}{Number of decimal places expected for results (Default: \code{3}).}

\item{output}{What output is desired: \code{"message"} (default) or \code{"stats"} objects.}
}
\value{
A list with class \code{"htest"} containing the following components:
  \item{statistic}{the value of the Shapiro-Wilk statistic.}
  \item{p.value}{an approximate p-value for the test.  This is
    said in Royston (1995) to be adequate for \code{p.value < 0.1}.}
  \item{method}{the character string \code{"Shapiro-Wilk normality test"}.}
  \item{data.name}{a character string giving the name(s) of the data.}
}
\description{
A note to the user about the validity of assumptions for the
default linear model.
}
\examples{

# message
normality_message(x = datasets::anscombe$x1, lab = "x1")

# statistical test object
normality_message(
  x = datasets::anscombe$x2,
  output = "stats"
)
}
\seealso{
Other helper_messages: \code{\link{bartlett_message}}
}
\concept{helper_messages}
