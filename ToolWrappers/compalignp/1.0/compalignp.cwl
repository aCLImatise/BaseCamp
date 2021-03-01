class: CommandLineTool
id: compalignp.cwl
inputs:
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compalignp
