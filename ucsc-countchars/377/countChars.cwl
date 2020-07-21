class: CommandLineTool
id: ../../../countChars.cwl
inputs:
- id: char
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- countChars
