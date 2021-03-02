class: CommandLineTool
id: methylpy_level.cwl
inputs:
- id: in_methyl_py
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
- methylpy
- level
