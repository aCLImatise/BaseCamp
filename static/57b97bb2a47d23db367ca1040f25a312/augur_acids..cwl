class: CommandLineTool
id: augur_acids..cwl
inputs:
- id: in_augur
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
- augur
- acids.
