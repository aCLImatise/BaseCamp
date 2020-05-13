class: CommandLineTool
id: randomSplit.pl.cwl
inputs:
- id: random_split
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- randomSplit.pl
