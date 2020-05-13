class: CommandLineTool
id: minvar.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: k
  doc: ''
  type: boolean
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
- minvar
