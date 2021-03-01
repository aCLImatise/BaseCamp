class: CommandLineTool
id: anvi_script_transpose_matrix.cwl
inputs:
- id: in_output_file
  doc: "File path to store results.\n"
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_matrix_file
  doc: Input matrix.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File path to store results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-transpose-matrix
