class: CommandLineTool
id: bismark2bedGraph.cwl
inputs:
- id: methylation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: extractor
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark2bedGraph
