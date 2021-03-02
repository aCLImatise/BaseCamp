class: CommandLineTool
id: makeidx.pl.cwl
inputs:
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_ian_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -ianp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makeidx.pl
