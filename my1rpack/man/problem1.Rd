\name{problem1}
\alias{problem1}
\title{hw2 problem1}
\description{This generates a plot for the specific function in a certain range.
The generated plot is in tex tikz format. With the last argument being TRUE, it compiles the generated tex file into a PDF file.}

\usage{problem1(filename = 'nameOfOutput', fcnname = aFunction, nRange =
c(xLowerBound, xUpperBound), nsample = N, TRUE)}

\arguments{
  \item{filename}{The file namea, a character vector, e.g., filename=`bmw1Series'}
  \item{fcnname}{A function object for a function}
  \item{nrange}{a numeric vector with two real numbers, e.g., nrange=c(-5,5)}
  \item{nsample}{an numeric vector with single number, e.g., ngrid=10}
  \item{compile}{Indicates whether to generate a PDF file}
}

\value{used for side-effects}

\author{Shihong Li email<sli50@jhu.edu>}
\note{}
\examples{
problem1('bmw1series', dnorm, c(-5, 5), 10, TRUE)
}