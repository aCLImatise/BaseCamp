class: CommandLineTool
id: screed_command.cwl
inputs:
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- screed
- command
