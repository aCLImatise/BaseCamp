class: CommandLineTool
id: segway_COMMAND.cwl
inputs:
- id: in_segway
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_global_args
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
- segway
- COMMAND
