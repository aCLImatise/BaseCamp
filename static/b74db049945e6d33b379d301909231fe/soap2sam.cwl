class: CommandLineTool
id: soap2sam.pl.cwl
inputs:
- id: aln_soap
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
- soap2sam.pl
