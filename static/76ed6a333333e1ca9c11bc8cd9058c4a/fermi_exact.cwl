class: CommandLineTool
id: fermi_exact.cwl
inputs:
- id: idx_base_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: src_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ms
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Ms
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- exact
