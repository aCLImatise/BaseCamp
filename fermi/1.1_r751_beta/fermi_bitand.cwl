class: CommandLineTool
id: ../../../fermi_bitand.cwl
inputs:
- id: in_one_dot_bit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two_dot_bit
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- bitand
