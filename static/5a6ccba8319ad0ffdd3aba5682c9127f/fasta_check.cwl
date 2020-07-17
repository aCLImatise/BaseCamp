class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta_check.cwl
inputs:
- id: aa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aa
- id: hyphen
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hyphen
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_check
