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
      ~{if (distribution) then "-distribution" else ""} \
      ~{if (numpoints) then "-numPoints" else ""} \
      ~{if (verbose) then "-VERBOSE" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (count_filename) then "-countFilename" else ""} \
      ~{if (cov_filename) then "-covFilename" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    distribution: "what kind of distribution to use for generating read\\ncounts? Currently supports Poisson, NegativeBinomial,\\nZeroTruncatedPoisson,\\nZeroTruncatedNegativeBinomial, PoissonRegression,\\nNegativeBinomialRegression,\\nZeroTruncatedPoissonRegression,\\nZeroTruncatedNegativeBinomialRegression"
    numpoints: "number of locations with at least a single read mapping."
    verbose: "output additional messages about run to stderr if set"
    seed: "seed (positive integer) for random numbers (defaults to\\nsystem time)"
    count_filename: "filename to write counts to"
    cov_filename: "filename(s) to write covariates to (if you have more than\\n1, wrap in quotes)"
    format: "format for the counts file. Options are BED_BINNED\\n(default), BED_UNBINNED"
    about: "print about message"
  }
  output {
    File out_stdout = stdout()
  }
}