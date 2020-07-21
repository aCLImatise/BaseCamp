class: CommandLineTool
id: ../../../fermi_exact.cwl
inputs:
- id: ms
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Ms
- id: idx_based_ot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: src_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- exact
