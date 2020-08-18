class: CommandLineTool
id: ../../../tailLines.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: tail
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tailLines
