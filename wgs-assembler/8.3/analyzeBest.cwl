class: CommandLineTool
id: analyzeBest.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeBest
