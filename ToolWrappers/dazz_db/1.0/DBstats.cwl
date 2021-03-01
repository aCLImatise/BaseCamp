class: CommandLineTool
id: DBstats.cwl
inputs:
- id: in_nu
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DBstats
