class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tadaridaC.r.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: classifier
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tadaridaC.r
