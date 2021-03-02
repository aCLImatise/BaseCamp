class: CommandLineTool
id: Piranha.cwl
inputs:
- id: in_output
  doc: Name of output file, STDOUT if omitted
  type: File?
  inputBinding:
    prefix: -output
- id: in_sort
  doc: "indicates that input is unsorted and Piranha should\nsort it for you"
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_p_threshold
  doc: significance threshold for sites
  type: boolean?
  inputBinding:
    prefix: -p_threshold
- id: in_no_pval_correct
  doc: "don't correct p-values for multiple hypothesis\ntesting. We correct by default\
    \ using B&H."
  type: boolean?
  inputBinding:
    prefix: -no_pval_correct
- id: in_background_thresh
  doc: "indicates that this proportion of the lowest scores\nshould be considered\
    \ the background. Default is 0.99"
  type: boolean?
  inputBinding:
    prefix: -background_thresh
- id: in_bin_size_reponse
  doc: "indicates that the response (first input file) is raw\nreads and should be\
    \ binned into bins of this size"
  type: boolean?
  inputBinding:
    prefix: -bin_size_reponse
- id: in_bin_size_co_vars
  doc: "indicates that the covariates (all except first\nfile) are raw reads and should\
    \ be binned into bins of\nthis size"
  type: boolean?
  inputBinding:
    prefix: -bin_size_covars
- id: in_bin_size_both
  doc: synonymous with -b x -i x for any x
  type: boolean?
  inputBinding:
    prefix: -bin_size_both
- id: in_cluster_dist
  doc: "merge significant bins within this distance.\nSetting to 0 disables merging,\
    \ default is 1 (merge\nadjacent)"
  type: boolean?
  inputBinding:
    prefix: -cluster_dist
- id: in_suppress_co_vars
  doc: don't print covariate values in output
  type: boolean?
  inputBinding:
    prefix: -suppress_covars
- id: in_fit
  doc: Fit only, output model to file
  type: File?
  inputBinding:
    prefix: -fit
- id: in_dist
  doc: "Distribution type. Currently supports Poisson,\nNegativeBinomial, ZeroTruncatedPoisson,\n\
    ZeroTruncatedNegativeBinomial (default with no\ncovariates), PoissonRegression,\n\
    NegativeBinomialRegression,\nZeroTruncatedPoissonRegression,\nZeroTruncatedNegativeBinomialRegression\n\
    (default with covariates)"
  type: boolean?
  inputBinding:
    prefix: -dist
- id: in_fit_method
  doc: component fitting method
  type: boolean?
  inputBinding:
    prefix: -fitMethod
- id: in_model
  doc: "Use the specified model file instead of fitting to\ninput data"
  type: boolean?
  inputBinding:
    prefix: -model
- id: in_verbose
  doc: output additional messages about run to stderr if set
  type: boolean?
  inputBinding:
    prefix: -VERBOSE
- id: in_un_stranded
  doc: "Don't preserve strand (puts all the peaks in positive\nstrand)"
  type: boolean?
  inputBinding:
    prefix: -UNSTRANDED
- id: in_no_normalisation
  doc: don't normalise covariates
  type: boolean?
  inputBinding:
    prefix: -no_normalisation
- id: in_log_co_vars
  doc: convert covariates to log scale
  type: boolean?
  inputBinding:
    prefix: -log_covars
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file, STDOUT if omitted
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_fit
  doc: Fit only, output model to file
  type: File?
  outputBinding:
    glob: $(inputs.in_fit)
hints: []
cwlVersion: v1.1
baseCommand:
- Piranha
