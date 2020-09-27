class: CommandLineTool
id: damageprofiler.cwl
inputs:
- id: in_user
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parser
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- damageprofiler
