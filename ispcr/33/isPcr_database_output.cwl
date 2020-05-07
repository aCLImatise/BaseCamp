class: CommandLineTool
id: isPcr_database_output.cwl
inputs:
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- isPcr
- database
- output
