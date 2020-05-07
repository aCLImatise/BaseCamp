class: CommandLineTool
id: pipits_retrain_rdp.cwl
inputs:
- id: re_trains
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rdp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: classifier
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: j
  doc: ''
  type: string
  inputBinding:
    prefix: -j
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_retrain_rdp
