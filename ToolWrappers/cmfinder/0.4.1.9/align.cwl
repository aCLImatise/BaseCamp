class: CommandLineTool
id: align.cwl
inputs:
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_seq_file
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
- align
