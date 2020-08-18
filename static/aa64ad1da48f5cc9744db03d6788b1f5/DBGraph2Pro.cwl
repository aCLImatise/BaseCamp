class: CommandLineTool
id: ../../../DBGraph2Pro.cwl
inputs:
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: ''
  type: long
  inputBinding:
    prefix: -p
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: l
  doc: ''
  type: long
  inputBinding:
    prefix: -l
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- DBGraph2Pro
