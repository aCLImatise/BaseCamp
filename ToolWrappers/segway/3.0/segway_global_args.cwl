class: CommandLineTool
id: segway_global_args.cwl
inputs:
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segway
- global_args
