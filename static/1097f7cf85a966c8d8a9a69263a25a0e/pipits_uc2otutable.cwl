class: CommandLineTool
id: pipits_uc2otutable.cwl
inputs:
- id: i
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_uc2otutable
