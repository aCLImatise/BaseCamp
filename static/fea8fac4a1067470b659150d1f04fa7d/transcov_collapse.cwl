class: CommandLineTool
id: transcov_collapse.cwl
inputs:
- id: in_matrices
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transcov
- collapse
