class: CommandLineTool
id: seqtk_mutfa_in.snp.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mutfa
- in.snp
