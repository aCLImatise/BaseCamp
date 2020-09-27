class: CommandLineTool
id: mglex_cli_spread.cwl
inputs:
- id: in_data
  doc: Feature matrix; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: in_responsibility
  doc: Responsibility (weight) matrix file
  type: File
  inputBinding:
    prefix: --responsibility
- id: in_weight
  doc: Weights (sequence length) file for normalization
  type: File
  inputBinding:
    prefix: --weight
- id: in_precision
  doc: Output precision; default 2
  type: long
  inputBinding:
    prefix: --precision
- id: in_normalize
  doc: Report (weighted) average instead of sum
  type: boolean
  inputBinding:
    prefix: --normalize
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_spread
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mglex-cli
- spread
