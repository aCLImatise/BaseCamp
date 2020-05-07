class: CommandLineTool
id: sparse_update.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- update
