class: CommandLineTool
id: seqtk_mutfa.cwl
inputs:
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_snp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mutfa
