class: CommandLineTool
id: restrict_repset.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- restrict_repset.py
