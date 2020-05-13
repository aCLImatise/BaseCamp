class: CommandLineTool
id: computeMatrixOperations_subset.cwl
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
- id: groups
  doc: 'Groups to include. If none are specified then all will be included. (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --groups
- id: samples
  doc: 'Samples to include. If none are specified then all will be included. (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --samples
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- subset
