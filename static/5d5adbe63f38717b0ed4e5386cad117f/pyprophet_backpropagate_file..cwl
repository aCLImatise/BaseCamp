class: CommandLineTool
id: pyprophet_backpropagate_file..cwl
inputs:
- id: in_py_prophet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_back_propagate
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
- backpropagate
- file.
