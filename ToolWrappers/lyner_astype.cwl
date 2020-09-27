class: CommandLineTool
id: lyner_astype.cwl
inputs:
- id: in_type
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- astype
