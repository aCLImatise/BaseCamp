class: CommandLineTool
id: barcode_filter.py.cwl
inputs:
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- barcode_filter.py
