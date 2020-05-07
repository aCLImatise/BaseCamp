class: CommandLineTool
id: eigenstratQTL.cwl
inputs:
- id: must
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: all
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: be
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: specified
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: j
  doc: ''
  type: boolean
  inputBinding:
    prefix: -j
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- eigenstratQTL
