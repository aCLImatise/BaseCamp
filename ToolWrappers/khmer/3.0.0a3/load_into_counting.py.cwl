class: CommandLineTool
id: load_into_counting.py.cwl
inputs:
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- load-into-counting.py
