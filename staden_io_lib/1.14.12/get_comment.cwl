class: CommandLineTool
id: get_comment.cwl
inputs:
- id: c
  doc: Suppresses display of field-ID
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- get_comment
