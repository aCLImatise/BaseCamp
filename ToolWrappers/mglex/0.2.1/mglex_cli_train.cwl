class: CommandLineTool
id: mglex_cli_train.cwl
inputs:
- id: in_responsibility
  doc: Responsibility (weight) matrix file; default standard input
  type: File?
  inputBinding:
    prefix: --responsibility
- id: in_out_model
  doc: Output classificaton model file
  type: File?
  inputBinding:
    prefix: --outmodel
- id: in_weight
  doc: Weights (sequence length) file
  type: File?
  inputBinding:
    prefix: --weight
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
- id: in_train
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_model
  doc: Output classificaton model file
  type: File?
  outputBinding:
    glob: $(inputs.in_out_model)
hints: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- train
