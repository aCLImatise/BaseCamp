class: CommandLineTool
id: filter_rep_set.py.cwl
inputs:
- id: in_u
  doc: ''
  type: string
  inputBinding:
    prefix: -u
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_rep_set.py
