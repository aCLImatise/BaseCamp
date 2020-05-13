class: CommandLineTool
id: genomepy_config_COMMAND.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- config
- COMMAND
