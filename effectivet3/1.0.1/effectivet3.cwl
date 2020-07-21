class: CommandLineTool
id: ../../../effectivet3.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
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
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- effectivet3
