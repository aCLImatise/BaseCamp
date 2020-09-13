class: CommandLineTool
id: ../../../lyner_cluster_hierarchical.cwl
inputs:
- id: in_method
  doc: '[single|complete|average|weighted|centroid|median|ward]'
  type: boolean
  inputBinding:
    prefix: --method
- id: in_distance_metric
  doc: '[braycurtis|canberra|chebyshev|cityblock|correlation|cosine|dice|euclidean|hamming|jaccard|kulsinski|mahalanobis|matching|minkowski|rogerstanimoto|russellrao|seuclidean|sokalmichener|sokalsneath|sqeuclidean|yule]'
  type: boolean
  inputBinding:
    prefix: --distance-metric
- id: in_criterion
  doc: '[inconsistent|distance|maxclust|monocrit|maxclust_monocrit]'
  type: boolean
  inputBinding:
    prefix: --criterion
- id: in_threshold
  doc: ''
  type: double
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- cluster-hierarchical
