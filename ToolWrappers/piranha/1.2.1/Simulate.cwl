class: CommandLineTool
id: Simulate.cwl
inputs:
- id: in_distribution
  doc: "what kind of distribution to use for generating read\ncounts? Currently supports\
    \ Poisson, NegativeBinomial,\nZeroTruncatedPoisson,\nZeroTruncatedNegativeBinomial,\
    \ PoissonRegression,\nNegativeBinomialRegression,\nZeroTruncatedPoissonRegression,\n\
    ZeroTruncatedNegativeBinomialRegression"
  type: boolean?
  inputBinding:
    prefix: -distribution
- id: in_numpoints
  doc: number of locations with at least a single read mapping.
  type: boolean?
  inputBinding:
    prefix: -numPoints
- id: in_verbose
  doc: output additional messages about run to stderr if set
  type: boolean?
  inputBinding:
    prefix: -VERBOSE
- id: in_seed
  doc: "seed (positive integer) for random numbers (defaults to\nsystem time)"
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_count_filename
  doc: filename to write counts to
  type: boolean?
  inputBinding:
    prefix: -countFilename
- id: in_cov_filename
  doc: "filename(s) to write covariates to (if you have more than\n1, wrap in quotes)"
  type: boolean?
  inputBinding:
    prefix: -covFilename
- id: in_format
  doc: "format for the counts file. Options are BED_BINNED\n(default), BED_UNBINNED"
  type: boolean?
  inputBinding:
    prefix: -format
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Simulate
