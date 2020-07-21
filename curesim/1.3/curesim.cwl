class: CommandLineTool
id: ../../../curesim.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- curesim
