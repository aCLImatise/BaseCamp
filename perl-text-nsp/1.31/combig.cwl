class: CommandLineTool
id: combig.pl_BIGRAM.cwl
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
- combig.pl
- BIGRAM
