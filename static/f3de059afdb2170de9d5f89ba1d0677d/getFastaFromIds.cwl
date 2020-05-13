class: CommandLineTool
id: getFastaFromIds.py_list_out.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- getFastaFromIds.py
- list
- out
