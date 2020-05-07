class: CommandLineTool
id: computeMatrixOperations_cbind.cwl
inputs:
- id: matrix_file
  doc: 'Matrix files from the computeMatrix tool. (default: None)'
  type: string[]
  inputBinding:
    prefix: --matrixFile
- id: out_filename
  doc: 'Output file name (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- cbind
