% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readData.R
\name{readCircs}
\alias{readCircs}
\title{read a tabular circRNA candidate list}
\usage{
readCircs(file, subs = "all", qualfilter = TRUE, keepCols = 1:6, ...)
}
\arguments{
\item{file}{Input file location, a character string such as
\code{/home/user/my_circRNA_project/circ_splice_sites.bed}}

\item{subs}{A character string, keep only lines containing it in the name column.}

\item{qualfilter}{should quality filtering be performed?}

\item{keepCols}{An integer vector. Which input columns should be returned?}

\item{...}{other arguments}
}
\value{
A data table.
}
\description{
\code{readCircs} loads a list of circRNA candidates into a \code{data.table}.
Currently supported input formats are find_circ.py and find_circ2.py.
}
\details{
Not intended to be used directly, but will stay exported for the time being.
If find_circ2.py is used, fifth column will be renamed to \code{n_reads}
(from \code{n_frags} or \code{counts}, depending on the find_circ2 release) for
backwards compatibility and old time's sake. Will rename "lin" to "norm" in
find_circ2 input name column for the same reason.
Expects \code{<myproject>/fc2/circ_splice_sites.bed} as input, and assumes
the existence of \code{<myproject>/fc2/lin_splice_sites.bed}.
}
