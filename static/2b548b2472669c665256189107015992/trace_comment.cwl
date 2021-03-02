class: CommandLineTool
id: trace_comment.cwl
inputs:
- id: in_suppresses_display_fieldid
  doc: Suppresses display of field-ID
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_get_comment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_field
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
- trace_comment
