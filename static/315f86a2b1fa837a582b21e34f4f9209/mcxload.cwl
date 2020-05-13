class: CommandLineTool
id: mcxload.cwl
inputs:
- id: abc
  doc: ''
  type: string
  inputBinding:
    prefix: -abc
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- mcxload
