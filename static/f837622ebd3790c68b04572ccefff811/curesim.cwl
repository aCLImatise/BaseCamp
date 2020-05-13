class: CommandLineTool
id: curesim.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
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
outputs: []
cwlVersion: v1.1
baseCommand:
- curesim
