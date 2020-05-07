class: CommandLineTool
id: fsnviz_star_fusion_INPUT.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fsnviz
- star-fusion
- INPUT
