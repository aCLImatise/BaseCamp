class: CommandLineTool
id: ushuffle.cwl
inputs:
- id: in_specifies_the_sequence
  doc: specifies the sequence
  type: string
  inputBinding:
    prefix: -s
- id: in_specifies_number_generate
  doc: specifies the number of random sequences to generate
  type: long
  inputBinding:
    prefix: -n
- id: in_specifies_let_size
  doc: specifies the let size
  type: long
  inputBinding:
    prefix: -k
- id: in_seed
  doc: specifies the seed for random number generator
  type: long
  inputBinding:
    prefix: -seed
- id: in_benchmark
  doc: benchmark
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ushuffle
