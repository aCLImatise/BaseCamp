class: CommandLineTool
id: ../../../clean_pairs_memory.py.cwl
inputs:
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- clean_pairs_memory.py
