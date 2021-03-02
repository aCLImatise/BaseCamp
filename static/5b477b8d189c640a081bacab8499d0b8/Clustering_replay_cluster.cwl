class: CommandLineTool
id: Clustering_replay_cluster.cwl
inputs:
- id: in_cluster_replay
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id_mapping
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sample_mapping
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_merges_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_cluster_out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- replay-cluster
