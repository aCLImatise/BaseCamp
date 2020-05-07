class: CommandLineTool
id: slsh.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: not
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: found
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- slsh
