class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/randomSplit.pl.cwl
inputs:
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- randomSplit.pl
