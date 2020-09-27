class: CommandLineTool
id: charmmlipid2amber.py.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- charmmlipid2amber.py
