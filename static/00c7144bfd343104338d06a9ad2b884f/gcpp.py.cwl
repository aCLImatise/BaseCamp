class: CommandLineTool
id: gcpp.py.cwl
inputs:
- id: in_ref
  doc: reference genetic code
  type: string
  inputBinding:
    prefix: --ref
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genetic
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_codes
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcpp.py
