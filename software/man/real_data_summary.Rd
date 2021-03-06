% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mesh_functions.R
\name{real_data_summary}
\alias{real_data_summary}
\title{Creates Design Matrix and Run Rate}
\usage{
real_data_summary(
  shape_transformation,
  dir1,
  dir2,
  base_shape_dir,
  direction = dir,
  len = len,
  ec_type = "ECT",
  ball = TRUE,
  ball_radius = 1.5,
  mode = "rate",
  reduce = max,
  alpha = 0.5,
  num_landmarks = 100
)
}
\arguments{
\item{dir1}{(string): The first directory corresponding to class 1.}

\item{dir2}{(string): The second directory correponding to class 2.}

\item{len}{(int): The number of sub-level sets to compute the (S/D) EC curve on in each direction.}

\item{ec_type}{(string): What type of EC curve to compute. Currently we support ECT (Euler Characteristic Curve), SECT (Smooth Euler Characteristic Curve)
and DECT (Differentiated Euler Characteristic Curve). We use ECT in the papers.}

\item{ball}{(boolean): Determining whether or not to compute the (S/D) EC curve on a ball for uniform comparisons.}

\item{ball_radius}{(float): The radius of the ball to compute the (S/D) EC on; if you want the curve to be computed relative to the shape, don't touch this parameter.}
}
\value{
final_list (list): A list containing the design matrix of meshes from the two classes and the importances of each variable.
}
\description{
Creates the EC comparison matrix for two classes of meshes, and runs variable selection on the two class matrix.
We currently fit a Gaussian Process Classifier and use RATE for variable selection.
}
