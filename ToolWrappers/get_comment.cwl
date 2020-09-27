class: CommandLineTool
id: get_comment.cwl
inputs:
- id: in_suppresses_display_fieldid
  doc: Suppresses display of field-ID
  type: boolean
  inputBinding:
    prefix: -c
- id: in_field
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
- get_comment
