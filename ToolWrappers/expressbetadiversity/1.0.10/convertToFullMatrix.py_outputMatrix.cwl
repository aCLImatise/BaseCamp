class: CommandLineTool
id: convertToFullMatrix.py_outputMatrix.cwl
inputs:
- id: in_convert_to_full_matrix_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertToFullMatrix.py
- outputMatrix
