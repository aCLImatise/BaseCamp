class: CommandLineTool
id: ../../../DBGraphPep2Pro.cwl
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
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
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
- DBGraphPep2Pro
