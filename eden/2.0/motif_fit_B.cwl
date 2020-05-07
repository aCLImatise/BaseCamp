class: CommandLineTool
id: motif_fit_B.cwl
inputs:
- id: n_clusters
  doc: 'Number of clusters. (default: 4)'
  type: string
  inputBinding:
    prefix: --n-clusters
- id: threshold
  doc: 'The radius of the subcluster obtained by merging a new sample and the closest
    subcluster should be lesser than the threshold. Otherwise a new subcluster is
    started. (default: 0.1)'
  type: string
  inputBinding:
    prefix: --threshold
- id: branching_factor
  doc: 'Maximum number of CF subclusters in each node. If a new samples enters such
    that the number of subclusters exceed the branching_factor then the node has to
    be split. The corresponding parent also has to be split and if the number of subclusters
    in the parent is greater than the branching factor, then it has to be split recursively.
    (default: 50)'
  type: string
  inputBinding:
    prefix: --branching-factor
outputs: []
cwlVersion: v1.1
baseCommand:
- motif
- fit
- B
