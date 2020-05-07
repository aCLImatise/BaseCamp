class: CommandLineTool
id: ibdseq.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs: []
cwlVersion: v1.1
baseCommand:
- ibdseq
