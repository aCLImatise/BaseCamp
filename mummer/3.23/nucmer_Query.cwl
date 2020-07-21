class: CommandLineTool
id: ../../../nucmer_Query.cwl
inputs:
- id: nuc_mer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer
- Query
