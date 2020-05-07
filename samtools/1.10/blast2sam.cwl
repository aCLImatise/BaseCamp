class: CommandLineTool
id: blast2sam.pl.cwl
inputs:
- id: in_blastn
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- blast2sam.pl
