class: CommandLineTool
id: ../../../reveal.cwl
inputs:
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- reveal
