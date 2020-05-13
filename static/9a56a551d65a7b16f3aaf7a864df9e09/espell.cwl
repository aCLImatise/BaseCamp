class: CommandLineTool
id: espell.cwl
inputs:
- id: db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: query
  doc: Query string
  type: boolean
  inputBinding:
    prefix: -query
outputs: []
cwlVersion: v1.1
baseCommand:
- espell
