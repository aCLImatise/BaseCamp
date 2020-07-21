class: CommandLineTool
id: ../../../wgs2ncbi.cwl
inputs:
- id: conf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -conf
- id: action
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- wgs2ncbi
