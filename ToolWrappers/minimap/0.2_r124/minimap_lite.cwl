class: CommandLineTool
id: minimap_lite.cwl
inputs:
- id: in_target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query_dot_fa
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
- minimap-lite
