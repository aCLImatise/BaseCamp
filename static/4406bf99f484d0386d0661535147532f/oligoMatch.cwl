class: CommandLineTool
id: oligoMatch.cwl
inputs:
- id: in_oligos
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence
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
- oligoMatch
