class: CommandLineTool
id: message_count.cwl
inputs:
- id: in_message
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- message-count
