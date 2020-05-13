class: CommandLineTool
id: mglex_cli_spread.cwl
inputs:
- id: spread
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: spread
  doc: (--responsibility <file>) [--data <file> --normalize --weight <file>]
  type: string
  inputBinding:
    position: 1
- id: data
  doc: Feature matrix; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: responsibility
  doc: Responsibility (weight) matrix file
  type: File
  inputBinding:
    prefix: --responsibility
- id: weight
  doc: Weights (sequence length) file for normalization
  type: File
  inputBinding:
    prefix: --weight
- id: precision
  doc: Output precision; default 2
  type: long
  inputBinding:
    prefix: --precision
- id: normalize
  doc: Report (weighted) average instead of sum
  type: boolean
  inputBinding:
    prefix: --normalize
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- spread
