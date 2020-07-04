class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Rsample.cwl
inputs:
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: shape_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- Rsample
