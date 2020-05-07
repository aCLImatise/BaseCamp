class: CommandLineTool
id: message_count_path.cwl
inputs:
- id: message
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- message-count
- path
