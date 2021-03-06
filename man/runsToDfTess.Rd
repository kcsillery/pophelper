\name{runsToDfTess}
\alias{runsToDfTess}
\title{Convert TESS cluster files to R dataframe.}
\usage{
runsToDfTess(files = NA)
}
\arguments{
  \item{files}{One or more TESS cluster run files. Use
  \code{choose.files(multi=TRUE)} to select interactively.}
}
\value{
If a single file is selected, a single dataframe is
returned. If multiple files are selected, a list with
multiple dataframes is returned.
}
\description{
Takes one or more TESS cluster run files and converts each
of them to separate dataframes.
}
\details{
Use collectRunsTess() to collect TESS runs into one
directory.
}

