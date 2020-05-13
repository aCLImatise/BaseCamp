class: CommandLineTool
id: bigWigCorrelate.cwl
inputs:
- id: a_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigCorrelate
