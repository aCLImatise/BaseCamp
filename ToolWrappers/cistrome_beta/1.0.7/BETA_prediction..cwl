class: CommandLineTool
id: BETA_prediction..cwl
inputs:
- id: in_beta
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
- BETA
- prediction.
