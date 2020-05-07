class: CommandLineTool
id: computeMatrixOperations_info.cwl
inputs:
- id: matrix_file
  doc: 'Matrix file from the computeMatrix tool. (default: None)'
  type: string
  inputBinding:
    prefix: --matrixFile
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- info
