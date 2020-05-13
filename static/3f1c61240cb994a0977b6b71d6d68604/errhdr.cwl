class: CommandLineTool
id: errhdr.cwl
inputs:
- id: s
  doc: short subcode defines
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- errhdr
