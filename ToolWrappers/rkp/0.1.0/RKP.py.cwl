class: CommandLineTool
id: RKP.py.cwl
inputs:
- id: in_at
  doc: ''
  type: boolean
  inputBinding:
    prefix: -at
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -H
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -A
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RKP.py
