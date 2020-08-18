class: CommandLineTool
id: ../../../cluster2bedgraph.pl.cwl
inputs:
- id: cluster_distance_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: res
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- cluster2bedgraph.pl
