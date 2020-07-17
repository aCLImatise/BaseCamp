class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bismark2bedGraph.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark2bedGraph
