class: CommandLineTool
id: rgt_hint_data.cwl
inputs:
- id: in_rgt_hint
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
- rgt-hint
- data
