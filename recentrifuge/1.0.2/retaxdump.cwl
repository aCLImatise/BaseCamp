class: CommandLineTool
id: retaxdump.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: n
  doc: ''
  type: File
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- retaxdump
