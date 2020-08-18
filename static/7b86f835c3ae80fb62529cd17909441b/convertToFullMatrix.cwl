class: CommandLineTool
id: ../../../convertToFullMatrix.py_outputMatrix.cwl
inputs:
- id: convert_to_full_matrix_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- convertToFullMatrix.py
- outputMatrix
