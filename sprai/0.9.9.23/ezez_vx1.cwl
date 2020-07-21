class: CommandLineTool
id: ../../../ezez_vx1.pl.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ec_dot_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: as_mdot_spec
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ezez_vx1.pl
