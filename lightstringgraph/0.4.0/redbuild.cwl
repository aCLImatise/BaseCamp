class: CommandLineTool
id: redbuild.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- redbuild
