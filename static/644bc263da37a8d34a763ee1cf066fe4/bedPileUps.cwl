class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedPileUps.cwl
inputs:
- id: name
  doc: '- include BED name field 4 when evaluating uniqueness'
  type: boolean
  inputBinding:
    prefix: -name
- id: tab
  doc: '- use tabs to parse fields'
  type: boolean
  inputBinding:
    prefix: -tab
- id: verbose
  doc: '- show the location and size of each pileUp'
  type: string
  inputBinding:
    prefix: -verbose
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedPileUps
