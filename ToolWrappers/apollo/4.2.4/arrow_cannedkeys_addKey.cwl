class: CommandLineTool
id: arrow_cannedkeys_addKey.cwl
inputs:
- id: in_metadata
  doc: "-h, --help       Show this message and exit.\n"
  type: string
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
cwlVersion: v1.1
baseCommand:
- arrow
- cannedkeys
- addKey
