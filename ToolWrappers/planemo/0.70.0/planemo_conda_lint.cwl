class: CommandLineTool
id: planemo_conda_lint.cwl
inputs:
- id: in_recursive
  doc: Recursively perform command for nested conda
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_directories_dot
  doc: --help                          Show this message and exit.
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
- planemo
- conda_lint
