class: CommandLineTool
id: ../../../debruijn.cwl
inputs:
- id: word_size
  doc: word size [Integer]
  type: boolean
  inputBinding:
    prefix: -n
- id: alphabet
  doc: alphabet
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- debruijn
