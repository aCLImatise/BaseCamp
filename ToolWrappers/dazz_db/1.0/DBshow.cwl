class: CommandLineTool
id: DBshow.cwl
inputs:
- id: in_unq_uq
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -unqUQ
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DBshow
