class: CommandLineTool
id: fastahack.cwl
inputs:
- id: in_index
  doc: generate fasta index <fasta reference>.fai
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_region
  doc: print the specified region
  type: string?
  inputBinding:
    prefix: --region
- id: in_stdin
  doc: "read a stream of line-delimited region specifiers on stdin\nand print the\
    \ corresponding sequence for each on stdout"
  type: boolean?
  inputBinding:
    prefix: --stdin
- id: in_entropy
  doc: print the shannon entropy of the specified region
  type: boolean?
  inputBinding:
    prefix: --entropy
- id: in_dump
  doc: print the fasta file in the form 'seq_name <tab> sequence'
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_fast_a_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastahack
