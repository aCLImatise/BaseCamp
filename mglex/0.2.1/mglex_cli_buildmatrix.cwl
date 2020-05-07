class: CommandLineTool
id: mglex_cli_buildmatrix.cwl
inputs:
- id: build_matrix
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: build_matrix
  doc: (--seeds <file>) [--identifiers <file>]
  type: string
  inputBinding:
    position: 1
- id: seeds
  doc: Space-separated sequence identifier per line
  type: File
  inputBinding:
    prefix: --seeds
- id: identifiers
  doc: Sequence identifiers; one per line; default standard input
  type: File
  inputBinding:
    prefix: --identifiers
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- buildmatrix
