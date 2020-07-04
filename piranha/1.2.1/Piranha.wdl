version 1.0

task Piranha {
  input {
    Boolean? name_output_omitted
    Boolean? sort
    Boolean? p_threshold
    Boolean? no_pval_correct
    Boolean? background_thresh
    Boolean? bin_size_reponse
    Boolean? bin_size_co_vars
    Boolean? bin_size_both
    Boolean? cluster_dist
    Boolean? suppress_co_vars
    Boolean? fit
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
      ~{true="-output" false="" name_output_omitted} \
      ~{true="-sort" false="" sort} \
      ~{true="-p_threshold" false="" p_threshold} \
      ~{true="-no_pval_correct" false="" no_pval_correct} \
      ~{true="-background_thresh" false="" background_thresh} \
      ~{true="-bin_size_reponse" false="" bin_size_reponse} \
      ~{true="-bin_size_covars" false="" bin_size_co_vars} \
      ~{true="-bin_size_both" false="" bin_size_both} \
      ~{true="-cluster_dist" false="" cluster_dist} \
      ~{true="-suppress_covars" false="" suppress_co_vars} \
      ~{true="-fit" false="" fit} \
      ~{true="-dist" false="" dist} \
      ~{true="-fitMethod" false="" fit_method} \
      ~{true="-model" false="" model} \
      ~{true="-VERBOSE" false="" verbose} \
      ~{true="-UNSTRANDED" false="" un_stranded} \
      ~{true="-no_normalisation" false="" no_normalisation} \
      ~{true="-log_covars" false="" log_co_vars} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_omitted: "Name of output file, STDOUT if omitted "
    sort: "indicates that input is unsorted and Piranha should  sort it for you "
    p_threshold: "significance threshold for sites "
    no_pval_correct: "don't correct p-values for multiple hypothesis  testing. We correct by default using B&H. "
    background_thresh: "indicates that this proportion of the lowest scores  should be considered the background. Default is 0.99 "
    bin_size_reponse: "indicates that the response (first input file) is raw  reads and should be binned into bins of this size "
    bin_size_co_vars: "indicates that the covariates (all except first  file) are raw reads and should be binned into bins of  this size "
    bin_size_both: "synonymous with -b x -i x for any x "
    cluster_dist: "merge significant bins within this distance.  Setting to 0 disables merging, default is 1 (merge  adjacent) "
    suppress_co_vars: "don't print covariate values in output "
    fit: "Fit only, output model to file "
    dist: "Distribution type. Currently supports Poisson,  NegativeBinomial, ZeroTruncatedPoisson,  ZeroTruncatedNegativeBinomial (default with no  covariates), PoissonRegression,  NegativeBinomialRegression,  ZeroTruncatedPoissonRegression,  ZeroTruncatedNegativeBinomialRegression  (default with covariates) "
    fit_method: "component fitting method "
    model: "Use the specified model file instead of fitting to  input data "
    verbose: "output additional messages about run to stderr if set "
    un_stranded: "Don't preserve strand (puts all the peaks in positive  strand) "
    no_normalisation: "don't normalise covariates "
    log_co_vars: "convert covariates to log scale "
    about: "print about message "
  }
}