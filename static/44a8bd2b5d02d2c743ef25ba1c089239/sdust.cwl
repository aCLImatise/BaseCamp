class: CommandLineTool
id: sdust.cwl
inputs:
- id: '64'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '20'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: w
  doc: ''
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- sdust
