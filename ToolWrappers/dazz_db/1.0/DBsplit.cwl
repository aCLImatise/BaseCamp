class: CommandLineTool
id: DBsplit.cwl
inputs:
- id: in_x
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_int
  doc: ''
  type: long?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DBsplit
