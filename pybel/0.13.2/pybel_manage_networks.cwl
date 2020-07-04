class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pybel_manage_networks.cwl
inputs:
- id: drop
  doc: Drop a network by its identifier or drop all networks.
  type: string
  inputBinding:
    position: 0
- id: ls
  doc: List network names, versions, and optionally, descriptions.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- networks
