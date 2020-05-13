class: CommandLineTool
id: fixUnitigs.cwl
inputs:
- id: unit_igs_cgb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fixed_unit_igs_cgb
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -O
outputs: []
cwlVersion: v1.1
baseCommand:
- fixUnitigs
