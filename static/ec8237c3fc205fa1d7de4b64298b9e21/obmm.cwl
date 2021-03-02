class: CommandLineTool
id: obmm.cwl
inputs:
- id: in_program
  doc: 'v 0.1                '
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
- obmm
