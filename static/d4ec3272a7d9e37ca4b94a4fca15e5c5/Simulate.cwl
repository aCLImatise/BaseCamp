class: CommandLineTool
id: Simulate.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: distribution
  doc: 'what kind of distribution to use for generating read  counts? Currently supports
    Poisson, NegativeBinomial,  ZeroTruncatedPoisson,  ZeroTruncatedNegativeBinomial,
    PoissonRegression,  NegativeBinomialRegression,  ZeroTruncatedPoissonRegression,  ZeroTruncatedNegativeBinomialRegression '
  type: boolean
  inputBinding:
    prefix: -distribution
- id: numpoints
  doc: 'number of locations with at least a single read mapping. '
  type: boolean
  inputBinding:
    prefix: -numPoints
- id: verbose
  doc: 'output additional messages about run to stderr if set '
  type: boolean
  inputBinding:
    prefix: -VERBOSE
- id: seed
  doc: 'seed (positive integer) for random numbers (defaults to  system time) '
  type: boolean
  inputBinding:
    prefix: -seed
- id: count_filename
  doc: 'filename to write counts to '
  type: boolean
  inputBinding:
    prefix: -countFilename
- id: cov_filename
  doc: 'filename(s) to write covariates to (if you have more than  1, wrap in quotes) '
  type: boolean
  inputBinding:
    prefix: -covFilename
- id: format
  doc: 'format for the counts file. Options are BED_BINNED  (default), BED_UNBINNED '
  type: boolean
  inputBinding:
    prefix: -format
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- Simulate
