class: CommandLineTool
id: debruijn.cwl
inputs:
- id: n
  doc: word size [Integer]
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: alphabet
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- debruijn
