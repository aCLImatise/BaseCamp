class: CommandLineTool
id: addCols.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: maximum
  doc: of colums (defaults to 16)
  type: string
  inputBinding:
    prefix: '- maximum'
outputs: []
cwlVersion: v1.1
baseCommand:
- addCols
