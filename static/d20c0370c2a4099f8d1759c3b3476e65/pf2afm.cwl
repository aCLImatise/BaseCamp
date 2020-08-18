class: CommandLineTool
id: ../../../pf2afm.cwl
inputs:
- id: d_no_display
  doc: ''
  type: boolean
  inputBinding:
    prefix: -dNODISPLAY
- id: gs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pf2afm
