\name{clumppExportStructure}
\alias{clumppExportStructure}
\title{Combine STRUCTURE runs and export files for use with software CLUMPP}
\usage{
clumppExportStructure(files = NULL, prefix = NA, parammode = NA,
  paramrep = NA)
}
\arguments{
  \item{files}{A character vector of STRUCTURE output files
  to be tabulated. Use \code{choose.files(multi=TRUE)} for
  interactive selection.}

  \item{prefix}{A character prefix for folder names. Set to
  'STRUCTUREpop' by default.}

  \item{parammode}{The algorithm option for CLUMPP
  paramfile. Calculated automatically by default. Options
  are 1, 2 or 3. Set to 3 if CLUMPP runs too long. See
  details.}

  \item{paramrep}{The number of repeats for CLUMPP
  paramfile. Calculated automatically by default. See
  details.}
}
\value{
The combined file and paramfile are written into respective
folders named by population.
}
\description{
Takes multiple STRUCTURE runs and combines several repeats
for each K into a single file along with a parameter file.
The two output files are organised into folders by K. The
CLUMPP.exe file can simply be copied to this folder and run
to reorder the clusters for each K.
}
\details{
When multiple repeats are run for each K in STRUCTURE, the
order of clusters may be jumbled for each run. Therefore,
when plotting multiple runs within each K, the colours
cannot be assigned correctly. The software CLUMPP helps to
overcome this issue by reordering the clusters correctly.
This function clumppExportStructure() takes multiple runs
for each K and combines them into a single file and
generates a parameter file for easy use with CLUMPP.
Further details for CLUMPP can be found here: Jakobsson,
M., and Rosenberg, N. A. (2007). CLUMPP: a cluster matching
and permutation program for dealing with label switching
and multimodality in analysis of population structure.
Bioinformatics, 23(14), 1801-1806.

The parammode (M) is the type of algorithm used. Option 1
is 'FullSearch' (takes the longest time), option 2 is
'Greedy' and option 3 is 'LargeKGreedy' (fastest).

The parammode and paramrep for CLUMPP paramfile is set
based on this calculation. T <-
factorial(k)*((runs*(runs-1))/2)*k*ind, where k is number
of populations, runs is number of runs for k and ind is
number of individuals. If T <= 100000000, then parammode is
2 and paramrep is 20, otherwise parammode is 3 and paramrep
is set to 500.

To find out more about parammode (algorithm type) and
paramrep (repeats), refer to CLUMPP documentation.
}

