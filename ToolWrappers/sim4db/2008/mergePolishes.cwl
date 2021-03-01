class: CommandLineTool
id: mergePolishes.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_cdna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cdna_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_cdna_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mergePolishes
