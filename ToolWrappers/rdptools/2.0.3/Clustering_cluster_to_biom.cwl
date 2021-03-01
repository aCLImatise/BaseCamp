class: CommandLineTool
id: Clustering_cluster_to_biom.cwl
inputs:
- id: in_cluster_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- cluster-to-biom
