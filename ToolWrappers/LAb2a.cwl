class: CommandLineTool
id: LAb2a.cwl
inputs:
- id: in_la_a_two_b
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
- LAb2a
