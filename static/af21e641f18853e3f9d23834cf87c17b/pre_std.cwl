class: CommandLineTool
id: pre_std.py.cwl
inputs:
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pre_std.py
