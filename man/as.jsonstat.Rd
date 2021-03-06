% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jsonstat.R
\name{as.jsonstat}
\alias{as.jsonstat}
\alias{is.jsonstat}
\alias{is.jsonstat_collection}
\alias{is.jsonstat_dataset}
\alias{is.jsonstat_dimension}
\title{Create a JSON-stat object}
\usage{
as.jsonstat(x)

is.jsonstat(x)

is.jsonstat_dataset(x)

is.jsonstat_collection(x)

is.jsonstat_dimension(x)
}
\arguments{
\item{x}{a JSON-stat string, URL or file}
}
\value{
a JSON-stat object with subclass dataset, dimension or collection
}
\description{
Create a JSON-stat object
}
\examples{
file_path <- system.file("extdata", "oecd.json", package = "rjstat")
x <- as.jsonstat(file_path)
print(x)
is.jsonstat(x)
is.jsonstat_dataset(x)
is.jsonstat_dimension(x)

}

