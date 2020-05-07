class: CommandLineTool
id: n50.cwl
inputs:
- id: type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n50
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: full
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: manual
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- n50
