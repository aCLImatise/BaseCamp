class: CommandLineTool
id: cluster2bedgraph.pl.cwl
inputs:
- id: in_cluster_distance_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_res
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cluster2bedgraph.pl
