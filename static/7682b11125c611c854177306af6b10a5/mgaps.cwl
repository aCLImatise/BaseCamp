class: CommandLineTool
id: mgaps.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- mgaps
