class: CommandLineTool
id: sparse_mash.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: read
  doc: ''
  type: boolean
  inputBinding:
    prefix: --read
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- mash
