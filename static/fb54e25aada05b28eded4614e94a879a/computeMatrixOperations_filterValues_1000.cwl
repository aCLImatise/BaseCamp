class: CommandLineTool
id: computeMatrixOperations_filterValues_1000.cwl
inputs:
- id: '10'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '1000'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: min
  doc: ''
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: ''
  type: boolean
  inputBinding:
    prefix: --max
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- filterValues
- '1000'
