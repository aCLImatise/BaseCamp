class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pybel_manage_namespaces.cwl
inputs:
- id: drop
  doc: Drop a namespace by URL.
  type: string
  inputBinding:
    position: 0
- id: insert
  doc: Add a namespace by URL.
  type: string
  inputBinding:
    position: 1
- id: ls
  doc: List cached namespaces.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- namespaces
