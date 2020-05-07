class: CommandLineTool
id: mglex_cli_classify.cwl
inputs:
- id: classify
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: classify
  doc: (--model <file>) [--abcoverage <file>] [--diffcoverage <file>] [--composition
    <file>] [--labels <file>] [--beta <float>] [--logfile <file>] [--normalize]
  type: string
  inputBinding:
    position: 1
- id: normalize
  doc: Output class posterior instead of the raw likelihood
  type: boolean
  inputBinding:
    prefix: --normalize
- id: model
  doc: Pre-calculated classificaton model file
  type: File
  inputBinding:
    prefix: --model
- id: ab_coverage
  doc: Absolute mean coverage data file for Poisson Model
  type: File
  inputBinding:
    prefix: --abcoverage
- id: diff_coverage
  doc: Differential mean coverage data file for Multinomial Model
  type: File
  inputBinding:
    prefix: --diffcoverage
- id: composition
  doc: Compositional data (numeric) file for Naive Bayes Model
  type: File
  inputBinding:
    prefix: --composition
- id: labels
  doc: Label-type data file (e.g. a taxonomic path) for Hierarchical Naive Bayes Model
  type: File
  inputBinding:
    prefix: --labels
- id: beta
  doc: Beta correction factor (e.g. determined via MSE evaluation); default 1.0
  type: double
  inputBinding:
    prefix: --beta
- id: log_file
  doc: File for logging
  type: File
  inputBinding:
    prefix: --logfile
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- classify
