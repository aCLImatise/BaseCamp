class: CommandLineTool
id: ../../../computeMatrixOperations_filterStrand.cwl
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
- id: strand
  doc: '{+,-,.}, -s {+,-,.} Strand (default: None)'
  type: boolean
  inputBinding:
    prefix: --strand
- id: example
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- filterStrand
