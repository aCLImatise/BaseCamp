class: CommandLineTool
id: motif_fit_K.cwl
inputs:
- id: n_clusters
  doc: 'Number of clusters. (default: 4)'
  type: string
  inputBinding:
    prefix: --n-clusters
outputs: []
cwlVersion: v1.1
baseCommand:
- motif
- fit
- K
