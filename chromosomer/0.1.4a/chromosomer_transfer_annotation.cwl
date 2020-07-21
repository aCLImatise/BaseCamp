class: CommandLineTool
id: ../../../chromosomer_transfer_annotation.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: transfer
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- transfer
- annotation
