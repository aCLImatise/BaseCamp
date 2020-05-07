class: CommandLineTool
id: findphyl.cwl
inputs:
- id: rate_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: col_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: limit
  doc: ''
  type: string
  inputBinding:
    prefix: --limit
outputs: []
cwlVersion: v1.1
baseCommand:
- findphyl
