class: CommandLineTool
id: sdfield.cwl
inputs:
- id: in_field_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sdfield
