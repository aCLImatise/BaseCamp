class: CommandLineTool
id: overlapStats.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -O
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapStats
