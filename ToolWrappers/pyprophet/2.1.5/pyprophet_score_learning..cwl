class: CommandLineTool
id: pyprophet_score_learning..cwl
inputs:
- id: in_py_prophet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_score
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
- pyprophet
- score
- learning.
