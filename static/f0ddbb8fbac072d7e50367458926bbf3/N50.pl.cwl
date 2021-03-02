class: CommandLineTool
id: N50.pl.cwl
inputs:
- id: in_g
  doc: ''
  type: long?
  inputBinding:
    prefix: -G
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- N50.pl
