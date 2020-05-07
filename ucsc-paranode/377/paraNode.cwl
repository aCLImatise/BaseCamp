class: CommandLineTool
id: paraNode.cwl
inputs:
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cpu
  doc: Number of CPUs to use - default 1.
  type: string
  inputBinding:
    prefix: -cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- paraNode
