class: CommandLineTool
id: prophex_bwt2fa_output.fa.cwl
inputs:
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- bwt2fa
- output.fa
