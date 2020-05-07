class: CommandLineTool
id: pgma.cwl
inputs:
- id: names
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: distances
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pgma
