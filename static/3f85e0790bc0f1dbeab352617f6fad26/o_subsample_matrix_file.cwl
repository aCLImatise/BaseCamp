class: CommandLineTool
id: o_subsample_matrix_file.cwl
inputs:
- id: file
  doc: TAB delimited matrix to be processed
  type: File
  inputBinding:
    position: 0
- id: cols_to_remove
  doc: Columns to be removed from the matrix (one column id in each line)
  type: File
  inputBinding:
    prefix: --cols-to-remove
- id: rows_to_remove
  doc: Rows to be removed from the matrix (one row id in each line)
  type: File
  inputBinding:
    prefix: --rows-to-remove
- id: cols_to_keep
  doc: Columns to be kept in the subsampled matrix (one column id in each line)
  type: File
  inputBinding:
    prefix: --cols-to-keep
- id: rows_to_keep
  doc: Rows to be kept in the subsampled matrix (one row id in each line)
  type: File
  inputBinding:
    prefix: --rows-to-keep
- id: output_file
  doc: Output file name
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- o-subsample-matrix-file
