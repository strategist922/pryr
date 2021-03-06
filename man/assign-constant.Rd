% Generated by roxygen2 (4.0.0): do not edit by hand
\name{\%<c-\%}
\alias{\%<c-\%}
\title{Create a constant (locked) binding.}
\usage{
x \%<c-\% value
}
\arguments{
\item{x}{unquoted expression naming variable to create}

\item{value}{constant value}
}
\description{
Infix wrapper for \code{\link{assign}} + \code{\link{lockBinding}} that
creates a constant: a binding whose value can not be changed.
}
\examples{
x \%<c-\% 10
#' Generates an error:
\dontrun{x <- 20}

# Note that because of R's operator precedence rules, you
# need to wrap compound RHS expressions in ()
y \%<c-\% 1 + 2
y
z \%<c-\% (1 + 2)
z
}

