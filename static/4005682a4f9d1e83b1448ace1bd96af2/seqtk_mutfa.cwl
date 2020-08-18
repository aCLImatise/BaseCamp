class: CommandLineTool
id: ../../../seqtk_mutfa.cwl
inputs:
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_snp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mutfa
