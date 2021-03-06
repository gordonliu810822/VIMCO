% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vimco.R
\name{vimco}
\alias{vimco}
\title{vimco}
\usage{
vimco(stringname, nPheno, fit = TRUE, IndAsInit = TRUE, mu0 = NULL,
  sigb0 = NULL, Theta0 = NULL, Lambda0 = NULL, Alpha0 = NULL,
  fixlambda = TRUE, maxit = 10^3L, epsStopLogLik = 10^-5)
}
\arguments{
\item{stringname}{The plink file prefix.}

\item{nPheno}{The number of phenotypes.}

\item{fit}{whether fit (TRUE) model or not (FALSE).}

\item{IndAsInit}{whether take VBSR as initial values.}

\item{mu0}{Initial values for the variational mean of effect sizes (p by K).}

\item{sigb0}{An initial vector (K by 1) for the standard deviation of effect size.}

\item{Theta0}{An inital precision matrix (K by K) for errrors in multiple traits.}

\item{Lambda0}{Inital values for variational means (p by 1) of nonzero indicators.}

\item{Alpha0}{Initial values for the variational mean of nonzero indicators (p by K).}

\item{fixlambda}{a test parameter, always set to be true.ı}

\item{maxit}{The maximal iteration in the VBEM algorithm.}

\item{epsStopLogLik}{The tolerance for convergence.}
}
\value{
List of model parameters and local FDR estimates.'
}
\description{
Fit VIMCO for a GWAS data which is in a plink format (e.g. sim.bed, sim.bim, sim.fam).
}
\details{
\code{vimco} is the main function used for real GWAS analysis. If no intial values are provided and IndAsInit is set to be TRUE, it will fit BVSR first, and use its results as initial values for fitting VIMCO.
For a GWAS with n = 5000, p = 30000, it usually takes a few hours to finish the whole inference.
}
\examples{
path <- system.file(package = "vimco")
setwd(path)
stringname <- "sim"
tmp <- vimco(stringname, nPheno = 4, fit = TRUE)
}
\references{
VIMCO: Variational Inference for Multiple Correlated Outcomes in Genome-wide Association Studies[https://arxiv.org/abs/1807.10467]
}
