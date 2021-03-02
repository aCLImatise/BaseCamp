class: CommandLineTool
id: append_sff.cwl
inputs:
- id: in_add_me_dots_ff
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
- append_sff
