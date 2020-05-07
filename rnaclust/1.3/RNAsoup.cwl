class: CommandLineTool
id: RNAsoup.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
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
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAsoup
