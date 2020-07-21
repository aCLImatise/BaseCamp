class: CommandLineTool
id: ../../../chainSwap.cwl
inputs:
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chainSwap
