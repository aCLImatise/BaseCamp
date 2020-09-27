class: CommandLineTool
id: DAStrim.cwl
inputs:
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_int
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DAStrim
