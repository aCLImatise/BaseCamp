class: CommandLineTool
id: reveal.cwl
inputs:
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- reveal
