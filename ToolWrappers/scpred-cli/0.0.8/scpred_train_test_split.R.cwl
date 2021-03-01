class: CommandLineTool
id: scpred_train_test_split.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in .rds format
  type: File?
  inputBinding:
    prefix: --input-sce-object
- id: in_normalised_counts_slot
  doc: 'Name of the slot with normalised counts matrix in SCE object. Default: normcounts'
  type: string?
  inputBinding:
    prefix: --normalised-counts-slot
- id: in_training_matrix
  doc: Output path for training matrix in .rds format
  type: File?
  inputBinding:
    prefix: --training-matrix
- id: in_test_matrix
  doc: Output path for test matrix in .rds format
  type: File?
  inputBinding:
    prefix: --test-matrix
- id: in_cell_types_column
  doc: Column name for assigned cell types
  type: string?
  inputBinding:
    prefix: --cell-types-column
- id: in_training_labels
  doc: Output path for training labels in text format
  type: File?
  inputBinding:
    prefix: --training-labels
- id: in_test_labels
  doc: Output path for test labels in text format
  type: File?
  inputBinding:
    prefix: --test-labels
- id: in_random_seed
  doc: Seed for random number generation
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_training_ratio
  doc: Proportion of training/testing dataset split
  type: string?
  inputBinding:
    prefix: --training-ratio
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_training_matrix
  doc: Output path for training matrix in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_training_matrix)
- id: out_test_matrix
  doc: Output path for test matrix in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_test_matrix)
- id: out_training_labels
  doc: Output path for training labels in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_training_labels)
- id: out_test_labels
  doc: Output path for test labels in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_test_labels)
hints: []
cwlVersion: v1.1
baseCommand:
- scpred_train_test_split.R
