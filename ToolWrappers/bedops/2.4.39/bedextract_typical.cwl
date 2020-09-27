class: CommandLineTool
id: bedextract_typical.cwl
inputs:
- id: in_zero
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_three
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedextract-typical
