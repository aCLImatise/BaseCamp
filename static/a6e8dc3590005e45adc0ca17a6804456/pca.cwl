class: CommandLineTool
id: pca.cwl
inputs:
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_e
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_must
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pca
