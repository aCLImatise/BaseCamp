class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crimson_star_fusion.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crimson
- star-fusion
