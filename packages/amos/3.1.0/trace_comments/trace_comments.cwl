class: CommandLineTool
id: trace_comments.cwl
inputs:
- id: in_get_comment
  doc: dir
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trace_comments
