class: CommandLineTool
id: ../../../fermi_splitfa.cwl
inputs:
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: eight
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- splitfa
