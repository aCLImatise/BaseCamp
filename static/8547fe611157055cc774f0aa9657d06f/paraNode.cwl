class: CommandLineTool
id: ../../../paraNode.cwl
inputs:
- id: cpu
  doc: Number of CPUs to use - default 1.
  type: string
  inputBinding:
    prefix: -cpu
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- paraNode
