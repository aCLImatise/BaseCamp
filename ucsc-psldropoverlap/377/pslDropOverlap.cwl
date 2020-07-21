class: CommandLineTool
id: ../../../pslDropOverlap.cwl
inputs:
- id: in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslDropOverlap
