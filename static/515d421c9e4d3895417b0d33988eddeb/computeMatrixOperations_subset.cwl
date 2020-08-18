class: CommandLineTool
id: ../../../computeMatrixOperations_subset.cwl
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
- subset
