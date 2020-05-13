class: CommandLineTool
id: cgview.cwl
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
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- cgview
