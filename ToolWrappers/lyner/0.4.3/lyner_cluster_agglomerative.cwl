class: CommandLineTool
id: lyner_cluster_agglomerative.cwl
inputs:
- id: in_by
  doc: "Any comma separated combination of: 'trend',\n'mean', 'median', 'mad', 'var',\
    \ 'ontology'.\nOrder is relevant."
  type: string?
  inputBinding:
    prefix: --by
- id: in_min_n_clusters
  doc: "The minimum number of clusters to build. NOTE:\nThis option is mutually exclusive\
    \ with:\n[nclusters]."
  type: long?
  inputBinding:
    prefix: --min-nclusters
- id: in_max_n_clusters
  doc: "The maximum number of clusters to build. NOTE:\nThis option is mutually exclusive\
    \ with:\n[nclusters]."
  type: long?
  inputBinding:
    prefix: --max-nclusters
- id: in_n_clusters
  doc: "The exact number of clusters to build. NOTE:\nThis option is mutually exclusive\
    \ with:\n[min_nclusters, max_nclusters]."
  type: long?
  inputBinding:
    prefix: --nclusters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- cluster-agglomerative
