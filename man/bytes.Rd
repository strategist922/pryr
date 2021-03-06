% Generated by roxygen2 (4.0.0): do not edit by hand
\name{bytes}
\alias{bits}
\alias{bytes}
\title{Print the byte-wise representation of a value}
\usage{
bytes(x, split = TRUE)

bits(x, split = TRUE)
}
\arguments{
\item{x}{Either an \code{integer} or a \code{numeric} vector.}

\item{split}{Boolean; if \code{TRUE} the returned string is split at
regular indices for readability.}
}
\description{
Print the byte-wise representation of a value
}
\examples{
## Encoding doesn't change the internal bytes used to represent characters;
## it just changes how they are interpretted!

x <- y <- z <- "\\u9b3c"
Encoding(y) <- "bytes"
Encoding(z) <- "latin1"
print(x); print(y); print(z)
bytes(x); bytes(y); bytes(z)
bits(x); bits(y); bits(z)

## in R, integers are signed ints. The first bit indicates the sign.
## NA_integer is really just -0
bits(NA_integer_)

## There are multiple kinds of NAs, NaNs for real numbers
## (at least, on 64bit architectures)
print( c(NA_real_, NA_real_ + 1) )
rbind( bytes(NA_real_), bytes(NA_real_ + 1) )
rbind( bytes(NaN), bytes(0/0) )
}

