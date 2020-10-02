class: CommandLineTool
id: lyner_select.cwl
inputs:
- id: in_what
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
- select
