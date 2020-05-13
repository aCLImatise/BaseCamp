class: CommandLineTool
id: isPcr_database_query.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- isPcr
- database
- query
