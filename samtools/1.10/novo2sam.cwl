class: CommandLineTool
id: novo2sam.pl.cwl
inputs:
- id: aln_novo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- novo2sam.pl
