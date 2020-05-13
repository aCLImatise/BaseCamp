class: CommandLineTool
id: menescope.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- menescope
