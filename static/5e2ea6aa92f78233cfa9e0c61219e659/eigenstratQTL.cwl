class: CommandLineTool
id: eigenstratQTL.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: in_j
  doc: ''
  type: boolean
  inputBinding:
    prefix: -j
- id: in_i
  doc: ''
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- eigenstratQTL
