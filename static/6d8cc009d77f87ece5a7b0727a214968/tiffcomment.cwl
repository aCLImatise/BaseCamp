class: CommandLineTool
id: tiffcomment.cwl
inputs:
- id: in_edit
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -edit
- id: in_set
  doc: ''
  type: string?
  inputBinding:
    prefix: -set
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
  type: long?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tiffcomment
