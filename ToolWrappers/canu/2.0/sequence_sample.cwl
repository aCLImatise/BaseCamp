class: CommandLineTool
id: sequence_sample.cwl
inputs:
- id: in_paired
  doc: "treat inputs as paired sequences; the first two files form the\nfirst pair,\
    \ and so on."
  type: boolean
  inputBinding:
    prefix: -paired
- id: in_copies
  doc: "write C different copies of the sampling (without replacement).\n-output O\
    \           write output sequences to file O.  If paired, two files must be supplied.\n\
    -coverage C         output C coverage of sequences, based on genome size G.\n\
    -genomesize G\n-bases B            output B bases.\n-reads R            output\
    \ R reads.\n-pairs P            output P pairs (only if -paired).\n-fraction F\
    \         output fraction F of the input bases."
  type: long
  inputBinding:
    prefix: -copies
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence
- sample
