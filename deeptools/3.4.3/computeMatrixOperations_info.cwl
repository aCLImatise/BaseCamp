class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/computeMatrixOperations_info.cwl
inputs:
- id: matrix_file
  doc: 'Matrix file from the computeMatrix tool. (default: None)'
  type: string
  inputBinding:
    prefix: --matrixFile
- id: an
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: example
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- info
