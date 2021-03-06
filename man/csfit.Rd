\name{csfit}
\alias{csfit}
\title{csfit: Deconvolution from Known Cell Proportions}
\usage{
  csfit(cc, G, logRm = FALSE, logBase = 2)
}
\arguments{
  \item{G}{Matrix of gene expression, columns ordered in
  the same order at the cell-frequency matrix (n by g, n
  samples, g genes)}

  \item{cc}{Matrix of cell-frequency. (n by k, n samples, k
  cell-types)}

  \item{logRm}{Exponentiate data for deconvolution stage.
  Default is FALSE}

  \item{logBase}{Base of logarithm used to determine
  exponentiation factor. Default is 2}
}
\value{
  A list with three attributes: \item{ghat}{A matrix of
  cell-specific expression for each gene as derived from
  the coefficients of the fit. (Size: k by g, k cell types,
  gp genes)} \item{se}{Standard error of the fit
  coefficients} \item{residuals}{The individual sample
  residuals.}
}
\description{
  Deconvolves cell-specific expression using least-squares
  fit. Input is the heterogeneous sample gene expression of
  a group of samples and the matching cell-frequencies of
  the sample. The lower limit for the number of samples
  needed to deconvolving the cell-specific expression of N
  cell-types is N+1. For a single color array - the result
  could be interpreted as the average expression level of a
  given gene in a cell-type of that group. Multiplied by
  the frequency of a given cell-type in an individual in
  the group, it is the amount contributed by that cell type
  to the overall measured expression on the array.
}
\author{
  Shai Shen-Orr, Rob Tibshirani, Narasimhan
  Balasubramanian, David Wang
}
\references{
  Shen-Orr SS, Tibshirani R, Khatri P, Bodian DL, Staedtler
  F, Perry NM, Hastie T, Sarwal MM, Davis MM and Butte AJ
  (2010). "Cell type-specific gene expression differences
  in complex tissues." _Nature methods_, *7*(4), pp. 287-9.
  ISSN 1548-7105, <URL:
  http://dx.doi.org/10.1038/nmeth.1439>, <URL:
  http://www.ncbi.nlm.nih.gov/pubmed/20208531>.
}

