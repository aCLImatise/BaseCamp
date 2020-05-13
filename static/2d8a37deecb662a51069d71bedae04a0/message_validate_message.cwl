class: CommandLineTool
id: message_validate_message.cwl
inputs:
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- message-validate
- message
