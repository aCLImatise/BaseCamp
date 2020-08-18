class: CommandLineTool
id: ../../../addCols.cwl
inputs:
- id: max_cols
  doc: '- maximum number of colums (defaults to 16)'
  type: string
  inputBinding:
    prefix: -maxCols
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- addCols
