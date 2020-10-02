class: CommandLineTool
id: DASqv.cwl
inputs:
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -H
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
- DASqv
