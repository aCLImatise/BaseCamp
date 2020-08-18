class: CommandLineTool
id: ../../../pslCheck.cwl
inputs:
- id: quiet
  doc: '- no write error message, just filter'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: file_tbl
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslCheck
