class: CommandLineTool
id: faFrag.cwl
inputs:
- id: in_fa
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
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: preserve
  doc: in FASTA file
  type: string
  inputBinding:
    prefix: '- preserve'
outputs: []
cwlVersion: v1.1
baseCommand:
- faFrag
