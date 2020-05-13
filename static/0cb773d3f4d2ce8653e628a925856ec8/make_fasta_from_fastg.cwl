class: CommandLineTool
id: make_fasta_from_fastg.py.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- make_fasta_from_fastg.py
