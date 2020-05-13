class: CommandLineTool
id: scpred_eigen_decomp.R.cwl
inputs:
- id: training_matrix
  doc: Path to the training matrix in .rds format
  type: string
  inputBinding:
    prefix: --training-matrix
- id: log_transform
  doc: 'Should log-transform be performed on the matrix? Default: TRUE'
  type: string
  inputBinding:
    prefix: --log-transform
- id: training_labels
  doc: Path to the training labels (metadata) in text format
  type: string
  inputBinding:
    prefix: --training-labels
- id: principal_comps
  doc: Number of pricipal components for eigenvalue decomposition
  type: string
  inputBinding:
    prefix: --principal-comps
- id: random_seed
  doc: Seed for random number generator
  type: string
  inputBinding:
    prefix: --random-seed
- id: output_path
  doc: Output path for the scPred object in .rds format
  type: string
  inputBinding:
    prefix: --output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- scpred_eigen_decomp.R
