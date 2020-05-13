class: CommandLineTool
id: message_count_message.cwl
inputs:
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- message-count
- message
