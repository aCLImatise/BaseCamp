class: CommandLineTool
id: ../../../ipyrad.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
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
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- ipyrad
