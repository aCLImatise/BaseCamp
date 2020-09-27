class: CommandLineTool
id: false.cwl
inputs:
- id: in_ignored
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_line
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_arguments
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
- 'false'
