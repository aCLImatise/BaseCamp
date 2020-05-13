class: CommandLineTool
id: mglex_cli_significance.cwl
inputs:
- id: significance
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: significance
  doc: (--weight <file>) (--nulldata <file>) (--responsibility <file>) [--data <file>]
  type: string
  inputBinding:
    position: 1
- id: data
  doc: Log-likelihood matrix for which to calculate p-values; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: weight
  doc: Weights (sequence length) file
  type: File
  inputBinding:
    prefix: --weight
- id: null_data
  doc: Log-likelihood matrix with reference (null hypothesis) values
  type: File
  inputBinding:
    prefix: --nulldata
- id: responsibility
  doc: Log-likelihood responsibility matrix
  type: File
  inputBinding:
    prefix: --responsibility
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- significance
