class: CommandLineTool
id: mob_init.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_init
