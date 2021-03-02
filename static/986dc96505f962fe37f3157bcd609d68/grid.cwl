class: CommandLineTool
id: grid.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_display
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_high
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_using
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- grid
