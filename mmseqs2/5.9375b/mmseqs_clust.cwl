class: CommandLineTool
id: mmseqs_clust.cwl
inputs:
- id: cluster_mode
  doc: '0               0: Setcover, 1: connected component, 2: Greedy clustering
    by sequence length  3: Greedy clustering by sequence length (low mem)'
  type: boolean
  inputBinding:
    prefix: --cluster-mode
- id: max_iterations
  doc: 1000            maximum depth of breadth first search in connected component
  type: boolean
  inputBinding:
    prefix: --max-iterations
- id: similarity_type
  doc: '2               type of score used for clustering [1:2]. 1=alignment score.
    2=sequence identity '
  type: boolean
  inputBinding:
    prefix: --similarity-type
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- clust
