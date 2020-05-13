class: CommandLineTool
id: Piranha.cwl
inputs:
- id: output
  doc: 'Name of output file, STDOUT if omitted '
  type: boolean
  inputBinding:
    prefix: -output
- id: sort
  doc: 'indicates that input is unsorted and Piranha should  sort it for you '
  type: boolean
  inputBinding:
    prefix: -sort
- id: p_threshold
  doc: 'significance threshold for sites '
  type: boolean
  inputBinding:
    prefix: -p_threshold
- id: no_pval_correct
  doc: "don't correct p-values for multiple hypothesis  testing. We correct by default\
    \ using B&H. "
  type: boolean
  inputBinding:
    prefix: -no_pval_correct
- id: background_thresh
  doc: 'indicates that this proportion of the lowest scores  should be considered
    the background. Default is 0.99 '
  type: boolean
  inputBinding:
    prefix: -background_thresh
- id: bin_size_reponse
  doc: 'indicates that the response (first input file) is raw  reads and should be
    binned into bins of this size '
  type: boolean
  inputBinding:
    prefix: -bin_size_reponse
- id: bin_size_co_vars
  doc: 'indicates that the covariates (all except first  file) are raw reads and should
    be binned into bins of  this size '
  type: boolean
  inputBinding:
    prefix: -bin_size_covars
- id: bin_size_both
  doc: 'synonymous with -b x -i x for any x '
  type: boolean
  inputBinding:
    prefix: -bin_size_both
- id: cluster_dist
  doc: 'merge significant bins within this distance.  Setting to 0 disables merging,
    default is 1 (merge  adjacent) '
  type: boolean
  inputBinding:
    prefix: -cluster_dist
- id: suppress_co_vars
  doc: "don't print covariate values in output "
  type: boolean
  inputBinding:
    prefix: -suppress_covars
- id: fit
  doc: 'Fit only, output model to file '
  type: boolean
  inputBinding:
    prefix: -fit
- id: dist
  doc: 'Distribution type. Currently supports Poisson,  NegativeBinomial, ZeroTruncatedPoisson,  ZeroTruncatedNegativeBinomial
    (default with no  covariates), PoissonRegression,  NegativeBinomialRegression,  ZeroTruncatedPoissonRegression,  ZeroTruncatedNegativeBinomialRegression  (default
    with covariates) '
  type: boolean
  inputBinding:
    prefix: -dist
- id: fit_method
  doc: 'component fitting method '
  type: boolean
  inputBinding:
    prefix: -fitMethod
- id: model
  doc: 'Use the specified model file instead of fitting to  input data '
  type: boolean
  inputBinding:
    prefix: -model
- id: verbose
  doc: 'output additional messages about run to stderr if set '
  type: boolean
  inputBinding:
    prefix: -VERBOSE
- id: un_stranded
  doc: "Don't preserve strand (puts all the peaks in positive  strand) "
  type: boolean
  inputBinding:
    prefix: -UNSTRANDED
- id: no_normalisation
  doc: "don't normalise covariates "
  type: boolean
  inputBinding:
    prefix: -no_normalisation
- id: log_co_vars
  doc: 'convert covariates to log scale '
  type: boolean
  inputBinding:
    prefix: -log_covars
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- Piranha
