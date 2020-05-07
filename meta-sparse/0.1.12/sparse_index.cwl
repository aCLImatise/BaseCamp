class: CommandLineTool
id: sparse_index.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- index
