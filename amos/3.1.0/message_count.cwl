class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/message_count.cwl
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
