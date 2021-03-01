class: CommandLineTool
id: scpred_preprocess_data.R.cwl
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
- id: in_output_matrix_object
  doc: Path to the output matrix object in .rds format
  type: File?
  inputBinding:
    prefix: --output-matrix-object
- id: in_output_labels
  doc: Path to the metadata file with cell type labels in text format
  type: File?
  inputBinding:
    prefix: --output-labels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_matrix_object
  doc: Path to the output matrix object in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_matrix_object)
hints: []
cwlVersion: v1.1
baseCommand:
- scpred_preprocess_data.R
