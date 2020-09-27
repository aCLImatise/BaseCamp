class: CommandLineTool
id: merauder_OPTION....cwl
inputs:
- id: in_max
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_insert
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_required
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merauder
- OPTION...
