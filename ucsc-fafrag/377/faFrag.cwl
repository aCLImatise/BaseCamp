class: CommandLineTool
id: ../../../faFrag.cwl
inputs:
- id: mixed
  doc: '- preserve mixed-case in FASTA file'
  type: boolean
  inputBinding:
    prefix: -mixed
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- faFrag
