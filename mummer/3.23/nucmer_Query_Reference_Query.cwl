class: CommandLineTool
id: nucmer_Query_Reference_Query.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer
- Query
- Reference
- Query
