class: CommandLineTool
id: fastx_len_filter.py.cwl
inputs:
- id: min_len
  doc: ''
  type: long
  inputBinding:
    prefix: --min_len
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_len_filter.py
