% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mesh_functions.R
\name{create_ec_matrix_mult_d}
\alias{create_ec_matrix_mult_d}
\title{Create EC matrix from meshes.}
\usage{
create_ec_matrix_mult_d(
  directory,
  directions,
  len,
  ball_radius = 1,
  ball = FALSE,
  ec_type = "ECT"
)
}
\arguments{
\item{directory}{(string): :  The input directory of the meshes.}

\item{directions}{(nx3 matrix): :  The matrix of directions to compute the (S/D) EC curve over.}

\item{len}{(int): The number of sub-level sets to compute the (S/D) EC curve on in each direction.}

\item{ball_radius}{(float): The radius of the ball to compute the (S/D) EC on; if you want the curve to be computed relative to the shape, don't touch this parameter.}

\item{ball}{(boolean): Determining whether or not to compute the (S/D) EC curve on a ball for uniform comparisons.}

\item{ec_type}{(string): What type of EC curve to compute. Currently we support ECT (Euler Characteristic Curve), SECT (Smooth Euler Characteristic Curve)
and DECT (Differentiated Euler Characteristic Curve). We use ECT in the papers.}
}
\value{
data (matrix): The matrix of (S/D) EC curves of the meshes in the input directory.
}
\description{
Create an EC curve matrix given an input directory and set of directions to compute the (S/D) EC curve over.
Each row corresponds to one mesh, and the columns correspond to the sub-level sets of the directions in the matrix.
}
