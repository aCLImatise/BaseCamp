class: CommandLineTool
id: model_commands.cwl
inputs:
- id: in_x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_model
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
- model
- commands
