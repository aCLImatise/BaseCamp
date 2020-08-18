class: CommandLineTool
id: ../../../anvi_script_transpose_matrix.cwl
inputs:
- id: output_file
  doc: File path to store results.
  type: string
  inputBinding:
    prefix: --output-file
- id: matrix_file
  doc: Input matrix.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-transpose-matrix
