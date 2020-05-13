class: CommandLineTool
id: bamToWig.py.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToWig.py
