class: CommandLineTool
id: MALVA.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: variants
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- MALVA
