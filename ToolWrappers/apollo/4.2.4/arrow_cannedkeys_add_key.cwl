class: CommandLineTool
id: arrow_cannedkeys_add_key.cwl
inputs:
- id: in_metadata
  doc: Optional metadata
  type: string?
  inputBinding:
    prefix: --metadata
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
- add_key
