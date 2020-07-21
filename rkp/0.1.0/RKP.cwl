class: CommandLineTool
id: ../../../RKP.py.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -A
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -H
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: at
  doc: ''
  type: boolean
  inputBinding:
    prefix: -at
outputs: []
cwlVersion: v1.1
baseCommand:
- RKP.py
