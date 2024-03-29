% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulateCellMix.R
\name{simulateCellMix}
\alias{simulateCellMix}
\title{A function to generate a dataframe of mixed cell-type origin simulated
samples using given reference atlas.}
\usage{
simulateCellMix(numberOfSamples, mixingVector = NULL, reference)
}
\arguments{
\item{numberOfSamples}{The number of simulated samples to be generated in
the dataframe.}

\item{mixingVector}{Specify the cell origin proportions.If
numberOfSamples = 1, this can be a vector of length = number of cell types
in reference.Otherwise, this is a dataframe with rows for cell types (must
be equal to cell types in reference) and columns for samples. Cells contain
the proportion of the sample from the cell type. Use zeros for any unused
cell type. If this object is not given,will use random values for the
simulation.}

\item{reference}{A dataframe containing signatures of different cell types
used to generate the simulation. The first column should contain a unique
ID (e.g. CpG target ID) which can be used in deconvolution to match rows of
the reference to rows of the bulk. All subsequent columns are cell types.
Rows are units of the signature. Each cell contains the value for the cell
type and signature unit (e.g. methylation value at this CpG).}
}
\value{
A list containing two data frames. simulated: A dataframe which
contains mixed cell-type origin simulated samples. The first column contains
a unique ID (used from reference) which can be used in deconvolution to match
rows of the reference to rows of the bulk.All subsequent columns are cell
types. Rows are units of signature (e.g. CpGs). Each cell contains the
value for the cell type and unit (e.g. methylation value at this CpG)
proportions: A dataframe with the cell proportions of the generated samples.
Each row is a sample. Columns are cell types.
}
\description{
A function to generate a dataframe of mixed cell-type origin simulated
samples using given reference atlas.
}
\examples{
data("HumanCellTypeMethAtlas")
bulk_mix50 <- simulateCellMix(50, reference = HumanCellTypeMethAtlas)

bulk_mixVec <- simulateCellMix(1, mixingVector = c(
  0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
), reference = HumanCellTypeMethAtlas)
}
\references{
Moss, J. et al.  (2018). Comprehensive human cell-type
methylation atlas reveals origins of circulating cell-free DNA in health
and disease. Nature communications, 9(1), 1-12.
\url{https://doi.org/10.1038/s41467-018-07466-6}
}
\keyword{simulation}
