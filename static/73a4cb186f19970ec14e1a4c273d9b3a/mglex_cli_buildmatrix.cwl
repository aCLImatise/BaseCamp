class: CommandLineTool
id: mglex_cli_buildmatrix.cwl
inputs:
- id: in_seeds
  doc: Space-separated sequence identifier per line
  type: File?
  inputBinding:
    prefix: --seeds
- id: in_identifiers
  doc: Sequence identifiers; one per line; default standard input
  type: File?
  inputBinding:
    prefix: --identifiers
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_build_matrix
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
- buildmatrix
