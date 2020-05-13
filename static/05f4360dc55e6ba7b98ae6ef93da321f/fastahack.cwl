class: CommandLineTool
id: fastahack.cwl
inputs:
- id: fast_a_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index
  doc: generate fasta index <fasta reference>.fai
  type: boolean
  inputBinding:
    prefix: --index
- id: region
  doc: print the specified region
  type: string
  inputBinding:
    prefix: --region
- id: stdin
  doc: read a stream of line-delimited region specifiers on stdin and print the corresponding
    sequence for each on stdout
  type: boolean
  inputBinding:
    prefix: --stdin
- id: entropy
  doc: print the shannon entropy of the specified region
  type: boolean
  inputBinding:
    prefix: --entropy
- id: dump
  doc: print the fasta file in the form 'seq_name <tab> sequence'
  type: boolean
  inputBinding:
    prefix: --dump
outputs: []
cwlVersion: v1.1
baseCommand:
- fastahack
