class: CommandLineTool
id: mccortex.cwl
inputs:
- id: in_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cmd
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mccortex
