class: CommandLineTool
id: antarna.py_DP.cwl
inputs:
- id: in_accuracy
  doc: ''
  type: string
  inputBinding:
    prefix: --accuracy
- id: in_cstr
  doc: ''
  type: string
  inputBinding:
    prefix: -Cstr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- antarna.py
- DP
