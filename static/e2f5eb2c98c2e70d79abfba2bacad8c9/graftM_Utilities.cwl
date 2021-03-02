class: CommandLineTool
id: graftM_Utilities.cwl
inputs:
- id: in_graft_m
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
- graftM
- Utilities
