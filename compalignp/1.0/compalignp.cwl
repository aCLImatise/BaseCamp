class: CommandLineTool
id: compalignp.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- compalignp
