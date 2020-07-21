class: CommandLineTool
id: ../../../NLStradamus.cwl
inputs:
- id: i
  doc: ''
  type: string[]
  inputBinding:
    prefix: -i
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: information_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- NLStradamus
