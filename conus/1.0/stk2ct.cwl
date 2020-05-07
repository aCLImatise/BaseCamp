class: CommandLineTool
id: stk2ct.cwl
inputs:
- id: give_ct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- stk2ct
