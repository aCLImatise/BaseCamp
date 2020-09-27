class: CommandLineTool
id: fixUnitigs.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -O
- id: in_unit_igs_dot_cgb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fixed_unit_igs_dot_cgb
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fixUnitigs
