class: CommandLineTool
id: blossom5.cwl
inputs:
- id: in_see
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_usage_dot_txt
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
- blossom5
