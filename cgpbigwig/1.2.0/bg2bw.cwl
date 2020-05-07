class: CommandLineTool
id: bg2bw.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bg2bw
