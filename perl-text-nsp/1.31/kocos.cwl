class: CommandLineTool
id: kocos.pl_BIGRAM.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bigram
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kocos.pl
- BIGRAM
