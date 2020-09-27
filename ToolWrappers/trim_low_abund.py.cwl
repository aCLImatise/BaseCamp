class: CommandLineTool
id: trim_low_abund.py.cwl
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
- trim-low-abund.py
