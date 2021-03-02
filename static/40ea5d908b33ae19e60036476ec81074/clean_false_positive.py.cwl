class: CommandLineTool
id: clean_false_positive.py.cwl
inputs:
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clean_false_positive.py
