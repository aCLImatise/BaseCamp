class: CommandLineTool
id: ../../../FilterEdgesByCluster.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: clusters
  doc: ''
  type: File
  inputBinding:
    prefix: -clusters
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- FilterEdgesByCluster
