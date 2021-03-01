class: CommandLineTool
id: o_subsample_matrix_file.cwl
inputs:
- id: in_cols_to_remove
  doc: "Columns to be removed from the matrix (one column id\nin each line)"
  type: File?
  inputBinding:
    prefix: --cols-to-remove
- id: in_rows_to_remove
  doc: "Rows to be removed from the matrix (one row id in each\nline)"
  type: File?
  inputBinding:
    prefix: --rows-to-remove
- id: in_cols_to_keep
  doc: "Columns to be kept in the subsampled matrix (one\ncolumn id in each line)"
  type: File?
  inputBinding:
    prefix: --cols-to-keep
- id: in_rows_to_keep
  doc: "Rows to be kept in the subsampled matrix (one row id\nin each line)"
  type: File?
  inputBinding:
    prefix: --rows-to-keep
- id: in_output_file
  doc: "Output file name\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- o-subsample-matrix-file
