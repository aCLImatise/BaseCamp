class: CommandLineTool
id: lyner_filter_value..cwl
inputs:
- id: in_lyne_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- filter
- value.
