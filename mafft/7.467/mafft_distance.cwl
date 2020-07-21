class: CommandLineTool
id: ../../../mafft_distance.cwl
inputs:
- id: pd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -PD
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafft-distance
