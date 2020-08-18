class: CommandLineTool
id: ../../../bedRestrictToPositions.cwl
inputs:
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: restrict_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedRestrictToPositions
