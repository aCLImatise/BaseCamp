class: CommandLineTool
id: mglex_cli_significance.cwl
inputs:
- id: in_data
  doc: Log-likelihood matrix for which to calculate p-values; default standard input
  type: File?
  inputBinding:
    prefix: --data
- id: in_weight
  doc: Weights (sequence length) file
  type: File?
  inputBinding:
    prefix: --weight
- id: in_null_data
  doc: Log-likelihood matrix with reference (null hypothesis) values
  type: File?
  inputBinding:
    prefix: --nulldata
- id: in_responsibility
  doc: Log-likelihood responsibility matrix
  type: File?
  inputBinding:
    prefix: --responsibility
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_significance
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
- mglex-cli
- significance
