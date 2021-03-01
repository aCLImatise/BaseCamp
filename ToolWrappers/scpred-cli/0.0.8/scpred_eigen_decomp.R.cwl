class: CommandLineTool
id: scpred_eigen_decomp.R.cwl
inputs:
- id: in_training_matrix
  doc: Path to the training matrix in .rds format
  type: File?
  inputBinding:
    prefix: --training-matrix
- id: in_log_transform
  doc: 'Should log-transform be performed on the matrix? Default: TRUE'
  type: string?
  inputBinding:
    prefix: --log-transform
- id: in_training_labels
  doc: Path to the training labels (metadata) in text format
  type: File?
  inputBinding:
    prefix: --training-labels
- id: in_principal_comps
  doc: Number of pricipal components for eigenvalue decomposition
  type: long?
  inputBinding:
    prefix: --principal-comps
- id: in_random_seed
  doc: Seed for random number generator
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_output_path
  doc: Output path for the scPred object in .rds format
  type: File?
  inputBinding:
    prefix: --output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Output path for the scPred object in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints: []
cwlVersion: v1.1
baseCommand:
- scpred_eigen_decomp.R
