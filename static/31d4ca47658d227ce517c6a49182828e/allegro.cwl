class: CommandLineTool
id: allegro.cwl
inputs:
- id: options_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- allegro
