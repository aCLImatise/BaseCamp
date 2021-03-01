class: CommandLineTool
id: shannon.py.cwl
inputs:
- id: in_o
  doc: ''
  type: Directory?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- shannon.py
