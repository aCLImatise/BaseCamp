class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ushuffle.cwl
inputs:
- id: specifies_the_sequence
  doc: specifies the sequence
  type: string
  inputBinding:
    prefix: -s
- id: specifies_number_generate
  doc: specifies the number of random sequences to generate
  type: string
  inputBinding:
    prefix: -n
- id: specifies_let_size
  doc: specifies the let size
  type: string
  inputBinding:
    prefix: -k
- id: seed
  doc: specifies the seed for random number generator
  type: string
  inputBinding:
    prefix: -seed
- id: benchmark
  doc: benchmark
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- ushuffle
