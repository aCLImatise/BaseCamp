class: CommandLineTool
id: computeMatrixOperations_filterValues.cwl
inputs:
- id: matrix_file
  doc: 'Matrix file from the computeMatrix tool. (default: None)'
  type: string
  inputBinding:
    prefix: --matrixFile
- id: out_filename
  doc: 'Output file name (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: min
  doc: 'Minimum value. Any row having a single entry less than this will be excluded.
    The default is no minimum. (default: None)'
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: 'Maximum value. Any row having a single entry more than this will be excluded.
    The default is no maximum. (default: None)'
  type: long
  inputBinding:
    prefix: --max
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- filterValues
