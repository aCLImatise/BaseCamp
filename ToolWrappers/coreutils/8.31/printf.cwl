class: CommandLineTool
id: printf.cwl
inputs:
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_argument
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- printf
