class: CommandLineTool
id: compare_flags.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: f1
  doc: ''
  type: string
  inputBinding:
    prefix: -f1
- id: f2
  doc: ''
  type: string
  inputBinding:
    prefix: -f2
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_flags.py
