class: CommandLineTool
id: mglex_cli_train.cwl
inputs:
- id: train
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: train
  doc: (--weight <file>) (--outmodel <file>) [--responsibility <file>] [--abcoverage
    <file>] [--diffcoverage <file>] [--composition <file>] [--labels <file>] [--logfile
    <file>]
  type: string
  inputBinding:
    position: 1
- id: responsibility
  doc: Responsibility (weight) matrix file; default standard input
  type: File
  inputBinding:
    prefix: --responsibility
- id: out_model
  doc: Output classificaton model file
  type: File
  inputBinding:
    prefix: --outmodel
- id: weight
  doc: Weights (sequence length) file
  type: File
  inputBinding:
    prefix: --weight
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
- id: log_file
  doc: File for logging
  type: File
  inputBinding:
    prefix: --logfile
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- train
