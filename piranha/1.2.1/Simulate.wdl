version 1.0

task Simulate {
  input {
    Boolean? distribution
    Boolean? numpoints
    Boolean? verbose
    Boolean? seed
    Boolean? count_filename
    Boolean? cov_filename
    Boolean? format
    Boolean? about
  }
  command <<<
    Simulate \
      ~{true="-distribution" false="" distribution} \
      ~{true="-numPoints" false="" numpoints} \
      ~{true="-VERBOSE" false="" verbose} \
      ~{true="-seed" false="" seed} \
      ~{true="-countFilename" false="" count_filename} \
      ~{true="-covFilename" false="" cov_filename} \
      ~{true="-format" false="" format} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    distribution: "what kind of distribution to use for generating read  counts? Currently supports Poisson, NegativeBinomial,  ZeroTruncatedPoisson,  ZeroTruncatedNegativeBinomial, PoissonRegression,  NegativeBinomialRegression,  ZeroTruncatedPoissonRegression,  ZeroTruncatedNegativeBinomialRegression "
    numpoints: "number of locations with at least a single read mapping. "
    verbose: "output additional messages about run to stderr if set "
    seed: "seed (positive integer) for random numbers (defaults to  system time) "
    count_filename: "filename to write counts to "
    cov_filename: "filename(s) to write covariates to (if you have more than  1, wrap in quotes) "
    format: "format for the counts file. Options are BED_BINNED  (default), BED_UNBINNED "
    about: "print about message "
  }
}