class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pybel_manage_edges.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- edges
