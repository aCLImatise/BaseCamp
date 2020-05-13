class: CommandLineTool
id: biasaway_m.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- biasaway
- m
