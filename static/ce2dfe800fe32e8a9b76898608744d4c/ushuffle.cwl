class: CommandLineTool
id: ushuffle.cwl
inputs:
- id: s
  doc: specifies the sequence
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: specifies the number of random sequences to generate
  type: string
  inputBinding:
    prefix: -n
- id: k
  doc: specifies the let size
  type: string
  inputBinding:
    prefix: -k
- id: seed
  doc: specifies the seed for random number generator
  type: string
  inputBinding:
    prefix: -seed
- id: b
  doc: benchmark
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- ushuffle
