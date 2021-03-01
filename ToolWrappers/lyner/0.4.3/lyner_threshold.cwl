class: CommandLineTool
id: lyner_threshold.cwl
inputs:
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- threshold
