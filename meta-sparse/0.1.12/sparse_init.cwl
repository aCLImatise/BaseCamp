class: CommandLineTool
id: sparse_init.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- init
