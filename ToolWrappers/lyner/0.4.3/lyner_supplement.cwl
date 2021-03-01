class: CommandLineTool
id: lyner_supplement.cwl
inputs:
- id: in_supplementary_data
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
- supplement
