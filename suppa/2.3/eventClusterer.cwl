class: CommandLineTool
id: ../../../eventClusterer.py.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: st
  doc: ''
  type: string
  inputBinding:
    prefix: -st
outputs: []
cwlVersion: v1.1
baseCommand:
- eventClusterer.py
