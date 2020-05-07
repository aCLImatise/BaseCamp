class: CommandLineTool
id: get.cwl
inputs:
- id: i
  doc: ''
  type: string[]
  inputBinding:
    prefix: -i
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: history_id
  doc: ''
  type: string
  inputBinding:
    prefix: --history-id
outputs: []
cwlVersion: v1.1
baseCommand:
- get
