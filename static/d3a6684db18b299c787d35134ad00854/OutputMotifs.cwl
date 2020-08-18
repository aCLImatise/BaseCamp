class: CommandLineTool
id: ../../../OutputMotifs.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: version
  doc: ''
  type: string
  inputBinding:
    prefix: -version
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
- OutputMotifs
