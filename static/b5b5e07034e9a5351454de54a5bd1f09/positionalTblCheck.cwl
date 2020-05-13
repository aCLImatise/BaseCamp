class: CommandLineTool
id: positionalTblCheck.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: n>=2, print tables as checked
  type: string
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- positionalTblCheck
