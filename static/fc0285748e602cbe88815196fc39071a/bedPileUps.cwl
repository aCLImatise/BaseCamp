class: CommandLineTool
id: bedPileUps.cwl
inputs:
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: include
  doc: name field 4 when evaluating uniqueness
  type: string
  inputBinding:
    prefix: '- include'
- id: use
  doc: to parse fields
  type: string
  inputBinding:
    prefix: '- use'
- id: verbose
  doc: =2 - show the location and size of each pileUp
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bedPileUps
