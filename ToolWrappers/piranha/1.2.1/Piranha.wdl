version 1.0

task Piranha {
  input {
    File? name_output_file
    Boolean? sort
    Boolean? p_threshold
    Boolean? no_pval_correct
    Boolean? background_thresh
    Boolean? bin_size_reponse
    Boolean? bin_size_co_vars
    Boolean? bin_size_both
    Boolean? cluster_dist
    Boolean? suppress_co_vars
    File? fit
    Boolean? dist
    Boolean? fit_method
    Boolean? model
    Boolean? verbose
    Boolean? un_stranded
    Boolean? no_normalisation
    Boolean? log_co_vars
    Boolean? about
  }
  command <<<
    Piranha \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (p_threshold) then "-p_threshold" else ""} \
      ~{if (no_pval_correct) then "-no_pval_correct" else ""} \
      ~{if (background_thresh) then "-background_thresh" else ""} \
      ~{if (bin_size_reponse) then "-bin_size_reponse" else ""} \
      ~{if (bin_size_co_vars) then "-bin_size_covars" else ""} \
      ~{if (bin_size_both) then "-bin_size_both" else ""} \
      ~{if (cluster_dist) then "-cluster_dist" else ""} \
      ~{if (suppress_co_vars) then "-suppress_covars" else ""} \
      ~{if (fit) then "-fit" else ""} \
      ~{if (dist) then "-dist" else ""} \
      ~{if (fit_method) then "-fitMethod" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if (verbose) then "-VERBOSE" else ""} \
      ~{if (un_stranded) then "-UNSTRANDED" else ""} \
      ~{if (no_normalisation) then "-no_normalisation" else ""} \
      ~{if (log_co_vars) then "-log_covars" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file, STDOUT if omitted"
    sort: "indicates that input is unsorted and Piranha should\\nsort it for you"
    p_threshold: "significance threshold for sites"
    no_pval_correct: "don't correct p-values for multiple hypothesis\\ntesting. We correct by default using B&H."
    background_thresh: "indicates that this proportion of the lowest scores\\nshould be considered the background. Default is 0.99"
    bin_size_reponse: "indicates that the response (first input file) is raw\\nreads and should be binned into bins of this size"
    bin_size_co_vars: "indicates that the covariates (all except first\\nfile) are raw reads and should be binned into bins of\\nthis size"
    bin_size_both: "synonymous with -b x -i x for any x"
    cluster_dist: "merge significant bins within this distance.\\nSetting to 0 disables merging, default is 1 (merge\\nadjacent)"
    suppress_co_vars: "don't print covariate values in output"
    fit: "Fit only, output model to file"
    dist: "Distribution type. Currently supports Poisson,\\nNegativeBinomial, ZeroTruncatedPoisson,\\nZeroTruncatedNegativeBinomial (default with no\\ncovariates), PoissonRegression,\\nNegativeBinomialRegression,\\nZeroTruncatedPoissonRegression,\\nZeroTruncatedNegativeBinomialRegression\\n(default with covariates)"
    fit_method: "component fitting method"
    model: "Use the specified model file instead of fitting to\\ninput data"
    verbose: "output additional messages about run to stderr if set"
    un_stranded: "Don't preserve strand (puts all the peaks in positive\\nstrand)"
    no_normalisation: "don't normalise covariates"
    log_co_vars: "convert covariates to log scale"
    about: "print about message"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_fit = "${in_fit}"
  }
}