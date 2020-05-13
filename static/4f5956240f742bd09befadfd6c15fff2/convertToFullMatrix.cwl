class: CommandLineTool
id: convertToFullMatrix.py_outputMatrix_outputMatrix_outputMatrix.cwl
inputs:
- id: input_matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- convertToFullMatrix.py
- outputMatrix
- outputMatrix
- outputMatrix
