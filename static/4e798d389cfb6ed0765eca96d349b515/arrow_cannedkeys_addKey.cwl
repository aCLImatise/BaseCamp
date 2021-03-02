class: CommandLineTool
id: arrow_cannedkeys_addKey.cwl
inputs:
- id: in_key
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
- arrow
- cannedkeys
- addKey
