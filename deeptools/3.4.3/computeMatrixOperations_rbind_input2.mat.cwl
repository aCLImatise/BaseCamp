class: CommandLineTool
id: computeMatrixOperations_rbind_input2.mat.gz.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- rbind
- input2.mat.gz
