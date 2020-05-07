class: CommandLineTool
id: trace_comments.cwl
inputs:
- id: get_comment
  doc: dir
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- trace_comments
