class: CommandLineTool
id: fastx_len_filter.py.cwl
inputs:
- id: in_min_len
  doc: ''
  type: long
  inputBinding:
    prefix: --min_len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastx_len_filter.py
