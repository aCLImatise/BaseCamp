class: CommandLineTool
id: build_taxdb.cwl
inputs:
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_three
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- build_taxdb
