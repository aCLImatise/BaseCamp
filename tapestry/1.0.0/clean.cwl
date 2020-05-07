class: CommandLineTool
id: clean.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- clean
