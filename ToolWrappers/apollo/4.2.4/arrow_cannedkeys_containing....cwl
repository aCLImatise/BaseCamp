class: CommandLineTool
id: arrow_cannedkeys_containing....cwl
inputs:
- id: in_arrow
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_canned_keys
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- cannedkeys
- containing...
