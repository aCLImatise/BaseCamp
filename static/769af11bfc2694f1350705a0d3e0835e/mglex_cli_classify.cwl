class: CommandLineTool
id: mglex_cli_classify.cwl
inputs:
- id: in_normalize
  doc: Output class posterior instead of the raw likelihood
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_model
  doc: Pre-calculated classificaton model file
  type: File?
  inputBinding:
    prefix: --model
- id: in_ab_coverage
  doc: Absolute mean coverage data file for Poisson Model
  type: File?
  inputBinding:
    prefix: --abcoverage
- id: in_diff_coverage
  doc: Differential mean coverage data file for Multinomial Model
  type: File?
  inputBinding:
    prefix: --diffcoverage
- id: in_composition
  doc: Compositional data (numeric) file for Naive Bayes Model
  type: File?
  inputBinding:
    prefix: --composition
- id: in_labels
  doc: Label-type data file (e.g. a taxonomic path) for Hierarchical Naive Bayes Model
  type: File?
  inputBinding:
    prefix: --labels
- id: in_beta
  doc: Beta correction factor (e.g. determined via MSE evaluation); default 1.0
  type: double?
  inputBinding:
    prefix: --beta
- id: in_log_file
  doc: File for logging
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_classify
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- classify
