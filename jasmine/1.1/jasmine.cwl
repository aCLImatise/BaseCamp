class: CommandLineTool
id: ../../../jasmine.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: line
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jasmine
