class: CommandLineTool
id: mmseqs_clust.cwl
inputs:
- id: in_cluster_mode
  doc: '0               0: Setcover, 1: connected component, 2: Greedy clustering
    by sequence length  3: Greedy clustering by sequence length (low mem)'
  type: boolean
  inputBinding:
    prefix: --cluster-mode
- id: in_max_iterations
  doc: 1000            maximum depth of breadth first search in connected component
  type: boolean
  inputBinding:
    prefix: --max-iterations
- id: in_similarity_type
  doc: 2               type of score used for clustering [1:2]. 1=alignment score.
    2=sequence identity
  type: boolean
  inputBinding:
    prefix: --similarity-type
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mmseqs
- clust
